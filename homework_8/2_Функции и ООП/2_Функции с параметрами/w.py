def add_vat(price):
    nds = 0.20
    return price + price * nds

prices = [1000, 3499, 250]

for price in prices:
    print(add_vat(price))
