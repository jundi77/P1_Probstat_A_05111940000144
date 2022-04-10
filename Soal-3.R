set.seed(1)

Var_3_lambda = 4.5 # Ekspektasi / rata-rata

# 3.a
Var_3a_x = 6

Answer_3a = dpois(x = Var_3a_x, lambda = Var_3_lambda)

# 3.b
Var_3b_days = 0:364
Var_3b_p = rpois(n = 365, lambda = 6)

Answer_3b = plot(Var_3b_days, Var_3b_p, type='h', xlab = 'Hari', ylab = 'Bayi yang Lahir')

# 3.c
Var_3c_p = sum(Var_3b_p == 6) / 365
Answer_3c = 'Peluang 6 bayi lahir di rumah sakit dengan rata-rata kelahiran setiap hari 4,5 lebih kecil dibandingkan dengan yang memiliki rata-rata kelahiran 6 setiap hari. (0.128 < 0.178)'

# 3.d
# Mean dan variance sama dengan lambda
Answer_3d = Var_3_lambda