N = 1000; 
X = randn(1, N);
meuX = samplemean(X);
varX = samplevar(X);
stem(X)
title('Samples')
ylabel('X_i')
xlabel('Samples')

%% Task 2:
b = 4;
a = 3; 
Y=a*X + b;
meuY = samplemean(Y)
varY = samplevar(Y)
stem(Y)
title('Samples')
ylabel('Y_i')
xlabel('Samples')

%% Task 3:
close all; 
X = randn(1, N);
Y = randn(1, N);
%case 1: 
Z1 = Y;
muZ1 = samplemean(Z1); 
corrZ1 = sum((X-meuX).*(Z1-muZ1))/(sqrt(sum((X-meuX).^2)*sum((Z1-muZ1).^2)))
subplot 221
plot(X, Y, '.')
title('Z = Y, corr='+ string(corrZ1))
xlabel('X')
ylabel('Z')

%case 2
Z2 = (X+Y)/2;
muZ2 = samplemean(Z2); 
corrZ2 = sum((X-meuX).*(Z2-muZ2))/(sqrt(sum((X-meuX).^2)*sum((Z2-muZ2).^2)))
subplot 222
plot(X, Z2, '.')
title('Z = (X+Y)2, corr=' + string(corrZ2))
xlabel('X')
ylabel('Z')


%case 3
Z3 = (3*X+Y)/5;
muZ3 = samplemean(Z3); 
corrZ3 = sum((X-meuX).*(Z3-muZ3))/sqrt(sum((X-meuX).^2)*sum((Z3-muZ3).^2))
subplot 223
plot(X, Z3, '.')
title('Z = (3*X+Y)/5, corr=' + string(corrZ3))
xlabel('X')
ylabel('Z')


%case 4: 
Z4 = (90*X+Y)/100;
muZ4 = samplemean(Z4); 
corrZ4 = sum((X-meuX).*(Z4-muZ4))/(sqrt(sum((X-meuX).^2)*sum((Z4-muZ4).^2)))
subplot 224
plot(X, Z4, '.')
title('Z = (90*X+Y)/100, corr='+ string(corrZ4))
xlabel('X')
ylabel('Z')
