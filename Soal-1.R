set.seed(1)

# 1.a
Var_1a_x = 3
Var_1a_p = 0.2
Var_1a_q = 1 - Var_1a_p # tidak hadir acara vaksinasi

# P(X = 3) = g(3; q) = dgeom(x - 1, q)
Answer_1a = dgeom(x = (Var_1a_x - 1), prob = (Var_1a_q))

# 1.b
## R function rgeom(n, size, prob) returns n random numbers from the
## geometric distribution x~geom(prob) -> di cara penggunaannya hanya 2 arg,
##                                     -> yaitu rgeom(n, prob)
Var_1b_n = 10000
Var_1b_prob = 0.2
Var_1b_dist = rgeom(n = Var_1b_n, prob = Var_1b_prob)
Var_1b_dist_X_eq_3 = (Var_1b_dist == 3)

Answer_1b = mean(Var_1b_dist_X_eq_3)

# 1.c
Answer_1c = 'Kesimpulan yang didapat adalah kemungkinan peluang penyurvei bertemu dengan 3 orang yang tidak menghadiri acara vaksinasi kemudiann bertemu dengan yang menghadiri vaksinasi lebih kecil dibandingkan dengan peluang bertemu 3 orang yang telah menghadiri acara vaksinasi kemudian bertemu orang yang tidak menghadiri acara vaksinasi (0.032 < 0.0993)'

# 1.d
# Sukses = sukses bertemu orang yang ikut acara vaksinasi
Var_1d_p = 0.2
Var_1d_dist = rgeom(n = 10000, prob = Var_1d_p)

Answer_1d = hist(x = Var_1d_dist, 
                 main = "Histogram Distribusi Geometrik , Peluang X = 3 gagal 
                 Sebelum Sukses Pertama", xlab = "X", prob = TRUE, breaks = 60, xlim = c(3, 10))

# 1.e
# Nilai Rataan = 1 / p
Answer_1e_rataan = 1 / Var_1a_p

# Nilai Varian = (1 - p) / (p*p)
Answer_1e_varian = (1 - Var_1a_p) / (Var_1a_p ** 2)