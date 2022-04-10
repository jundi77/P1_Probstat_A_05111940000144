set.seed(1)

Var_4_x = 2
Var_4_v = 10 # derajat bebas

# 4.a
Answer_4a = dchisq(x = Var_4_x, df = Var_4_v)

# 4.b
Var_4b_x = rchisq(100, Var_4_v)

Answer_4b = hist(Var_4b_x)

# 4.c TODO