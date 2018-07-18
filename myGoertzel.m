function y = myGoertzel(data, k)
N = length(data);
scalingFactor = N / 2.0;
omega = (2 * pi * k) / N;
coeff = 2 * cos(omega);
q2 = 0;
q1 = 0;
for r = 1:N
    q0 = coeff * q1 - q2 + data(r);
    q2 = q1;
    q1 = q0;
end
y = ((q1 * cos(omega) - q2) + 1i * (q1 * sin(omega)))/ scalingFactor;
end