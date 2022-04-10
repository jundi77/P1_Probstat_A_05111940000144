set.seed(1)

Var_5_lambda = 3

# 5.a
Answer_5a = dexp(x, rate = Var_5_lambda)

# 5.b
Var_5b_x_10 = rexp(n = 10)
Var_5b_x_100 = rexp(n = 100)
Var_5b_x_1000 = rexp(n = 1000)
Var_5b_x_10000 = rexp(n = 10000)

hist(Var_5b_x_10)
hist(Var_5b_x_100)
hist(Var_5b_x_1000)
hist(Var_5b_x_10000)

# 5.c TODO