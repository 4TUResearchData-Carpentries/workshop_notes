
x = 5
coeffs = [2, 4, 3]
y = 0

for idx, coef in enumerate(coefs):
    y = y + coef * x**idx
print(y)