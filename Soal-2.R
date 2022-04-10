set.seed(1)

Var_2_n = 20
Var_2_p = 0.2 # Peluang sembuh

# 2.a
Var_2a_x = 4

Answer_2a = dbinom(x = Var_2a_x, size = Var_2_n, prob = Var_2_p)

# 2.b
Hist_2b_x = seq(0, Var_2_n, 1)
Hist_2b_y = dbinom(x = Hist_2b_x, size = Var_2_n, prob = Var_2_p)

Answer_2b = plot(Hist_2b_x, Hist_2b_y, type = 'h', xlab = 'Banyak Pasien', ylab = 'Peluang Sembuh')

# 2.c
# Nilai rataan = n**2 * p**2 - n * p**2 + n * p
Answer_2c_rataan = Var_2_n**2 * Var_2_p**2 - Var_2_n * Var_2_p**2 + Var_2_n * Var_2_p

# Nilai varian = n * p * q
Var_2_q = 1 - Var_2_p
Answer_2c_varian = Var_2_n * Var_2_p * Var_2_n