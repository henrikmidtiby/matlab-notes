[x, fval, niter] = sekant_method(@cos, 1.2, 2, 0.01)
[x, fval, niter] = sekant_method(@sin, 3, 4, 0.01)
[x, fval, niter] = sekant_method(@sin, 3, 4, 0.001)
[x, fval, niter] = sekant_method(@(x) log(x) - 1, 3, 4, 0.001)
