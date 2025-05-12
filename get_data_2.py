#здесь получаются данные со второго api, они делятся на части, чтобы было проще отслеживать работу
#позже эти части были соединены в одну базу данных full_products_database
import sqlite3
import requests
import json
from time import sleep

base_url = "https://goldapple.ru/front/api/catalog/product-card/base?itemId={itemId}&cityId=0c5b2444-70a0-4932-980c-b4dc0d3f02b5&customerGroupId=0&z=16-46"

headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
}

with open('products_data2.json', 'r', encoding='utf-8') as f:
    products_data = json.load(f)
def create_new_db(db_name):
    conn = sqlite3.connect(db_name)
    cursor = conn.cursor()
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS products (
        itemId TEXT PRIMARY KEY,
        name TEXT,
        type TEXT,
        brand TEXT,
        productType TEXT,
        composition TEXT,
        description TEXT,
        info TEXT,
        price REAL
    )
    ''')
    conn.commit()
    return conn, cursor
def fetch_product_data(itemId):
    url = base_url.format(itemId=itemId)
    print(f"Requesting data for itemId {itemId}: {url}")

    response = requests.get(url, headers=headers)
    sleep(3)

    if response.status_code == 200:
        try:
            data = response.json()

            if data.get("data", {}):
                product_data = data["data"]
                return product_data
            else:
                print(f"No data found for itemId {itemId}")
                return None
        except ValueError as e:
            print(f"Error decoding JSON for itemId {itemId}: {e}")
            return None
    else:
        print(f"Error fetching data for itemId {itemId}. Status code: {response.status_code}")
        return None


def extract_descriptions(product_description):
    description = ""
    composition = ""
    info = ""

    for desc in product_description:
        if desc['text'].lower() == 'описание':
            description = desc['content']
        elif desc['text'].lower() == 'состав':
            composition = desc['content']
        elif desc['text'].lower() == 'дополнительная информация':
            info = desc['content']

    return description, composition, info


def save_product_to_db(product_data, json_data, cursor, conn):
    itemId = product_data.get("itemId")
    name = product_data.get("name")
    type = product_data.get("type", "Unknown")
    brand = product_data.get("brand", "Unknown")
    productType = product_data.get("productType", "Unknown")
    price_data = product_data.get("variants", [{}])[0].get("price", {})
    price = price_data.get("actual", {}).get("amount", 0)
    #print(f"ItemId: {itemId}, Name: {name}, Price: {price}")
    description, composition, info = extract_descriptions(product_data.get("productDescription", []))

    cursor.execute('''
    INSERT OR REPLACE INTO products (itemId, name, type, brand, productType, composition, description, info, price)
    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
    ''', (itemId, name, type, brand, productType, composition, description, info, price))

    conn.commit()

    product_json = {
        "itemId": itemId,
        "name": name,
        "type": type,
        "brand": brand,
        "productType": productType,
        "composition": composition,
        "description": description,
        "info информация": info,
        "price": price
    }
    json_data.append(product_json)
# def process_all_products(products):
#     all_product_details = []
#     count = 1
#     for product in products:
#         print(count)
#         count += 1
#         itemId = product.get("itemId")
#         if itemId:
#             product_details = fetch_product_data(itemId)
#             if product_details:
#                 #all_product_details.append(product_details)
#                 save_product_to_db(product_details, all_product_details)
#     with open("all_product_details.json", "w", encoding="utf-8") as json_file:
#         json.dump(all_product_details, json_file, ensure_ascii=False, indent=4)
#     return all_product_details
def process_chunk_of_products(products, chunk_number):
    # Создаем новое соединение с базой данных и создаем курсор
    db_name = f'products_database{chunk_number}.db'
    conn, cursor = create_new_db(db_name)

    all_product_details = []
    for count, product in enumerate(products, start=1):
        print(f"Processing product {count}")
        itemId = product.get("itemId")
        if itemId:
            product_details = fetch_product_data(itemId)
            if product_details:
                save_product_to_db(product_details, all_product_details, cursor, conn)

    with open(f"products_json{chunk_number}.json", "w", encoding="utf-8") as json_file:
        json.dump(all_product_details, json_file, ensure_ascii=False, indent=4)

    conn.close()
    print(f"Chunk {chunk_number} saved.")

def process_all_products_in_chunks(products, chunk_size=1000):
    total_products = len(products)
    for i in range(0, total_products, chunk_size):
        chunk_number = (i // chunk_size) + 1
        chunk_products = products[i:i + chunk_size]
        process_chunk_of_products(chunk_products, chunk_number)


process_all_products_in_chunks(products_data)
#all_products_details = process_all_products(products_data)
#process_all_products(products_data)
# with open('product_details.json', 'w', encoding='utf-8') as f:
#     json.dump(all_products_details, f, ensure_ascii=False, indent=4)


print("Data has been saved to the SQLite database.")

#print(f"Data saved to product_details.json with {len(all_products_details)} products.")
