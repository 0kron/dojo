from scipy.stats import chi2

# Tablas de contingencia
data = [
        [50, 55, 50, 25],
        [120, 75, 100, 65],
        [80, 70, 150, 60]
       ]

for i in range(len(data)): 
    sum = 0
    for j in range(len(data[i])):
        sum += data[i][j]

    data[i].append(sum)


total = [0 for i in range(len(data[0]))]
for i in range(len(data)): 
    for j in range(len(data[i])):
        total[j] += data[i][j]


data.append(total)

print("Tabla de datos marginales:")
for l in data: 
    print(l)

expected = [[0.0 for j in range(len(data[i]) - 1)] for i in range(len(data) - 1)]

for i in range(len(data) - 1): 
    for j in range(len(data[i]) - 1): 
        expected[i][j] = float(data[i][-1] * data[-1][j] / data[-1][-1])

print("\nTabla de Esperados:")
for l in expected: 
    print(l)


T = 0

for i in range(len(data) - 1): 
    for j in range(len(data[i]) - 1): 
        T += (data[i][j] - expected[i][j])**2 / expected[i][j]

print("\nEstadística T:", T)


## Prueba de Hipótesis 
print("\n------ PRUEBA DE HIPÓTESIS ------")
gl = 6 
alpha = 0.05

valor_critico = chi2.ppf(1 - alpha, gl)
p_value = chi2.sf(T, gl)

print(f"Estadístico T        = {T:.4f}")
print(f"Grados de libertad   = {gl}")
print(f"Valor crítico        = {valor_critico:.4f}")
print(f"p-value              = {p_value:.6g}")

if T > valor_critico:
    print(f"\nComo T = {T:.4f} > {valor_critico:.4f}, RECHAZAMOS H0")
else:
    print(f"\nComo T = {T:.4f} ≤ {valor_critico:.4f}, NO rechazamos H0")
