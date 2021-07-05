A = (-32/243)^(1/5)
B = A * exp(i * 2 * pi / 5)
C = B * exp(i * 2 * pi / 5)
D = C * exp(i * 2 * pi / 5)
E = D * exp(i * 2 * pi / 5)

vals = [A, B, C, D, E, A];
figure(1);
plot(real(vals), imag(vals), 'o:')
axis equal;

%%
real_value = -32/243
Afifth = A^5
Bfifth = B^5
Cfifth = C^5
Dfifth = D^5
Efifth = E^5

%%