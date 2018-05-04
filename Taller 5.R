pvi_euler_mejorado(a, b, n, y0, f) := block([u,h,t],
  u[0]: y0,
  t: a,
  h: (b-a)/n,
  for i:1 thru n do (
      u[i]: float(u[i-1] + h*f(t+h/2,u[i-1]+ h/2*f(t,u[i-1]))),
      t: t+h
  ),
  makelist([a+h*i, u[i]], i, 0, n)
);

pvi_euler_mejorado(20,20,0.1,20)