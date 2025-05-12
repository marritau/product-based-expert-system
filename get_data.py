#здесь получаются данные из первого api
import requests
import json
from time import sleep

url = "https://goldapple.ru/front/api/catalog/products?categoryId=1000000256&cityId=0c5b2444-70a0-4932-980c-b4dc0d3f02b5&pageNumber={}&z=16-46"
# url = "https://goldapple.ru/front/api/catalog/product-card/base?itemId=19000288166&cityId=0c5b2444-70a0-4932-980c-b4dc0d3f02b5&customerGroupId=0&z=16-46"

# Заголовок User-Agent, чтобы запрос выглядел как запрос от браузера
headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
}


def parser(page):
    print(page)
    current_url = url.format(page)

    response = requests.get(current_url, headers=headers)
    sleep(4)
    if response.status_code == 200:
        data = response.json()
        #print(data)
        products = data.get("data", {}).get("products", [])
        # print(page)
        # print("JSON Data:", json.dumps(data, ensure_ascii=False, indent=4))
        extracted_data = []
        for product in products:
            product_data = {
                "itemId": product.get("itemId"),
                "name": product.get("name"),
                "productType": product.get("productType"),
                "brand": product.get("brand")
            }
            extracted_data.append(product_data)

        return extracted_data
    else:
        print(f"Error fetching data from page {
              page}. Status code: {response.status_code}")
        return []


def all_pages(total_pages):
    all_data = []
    for page in range(1, total_pages + 1):
        page_data = parser(page)
        all_data.extend(page_data)
    return all_data

total_pages = 179
all_products_data = all_pages(total_pages)

with open('products_data2.json', 'w', encoding='utf-8') as f:
    json.dump(all_products_data, f, ensure_ascii=False, indent=4)

print(f"Data saved to products_data.json with {len(all_products_data)} products.")
