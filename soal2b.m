% Definisi fungsi transfer
num = [4 2];
den = [2 14 18];

% Konversi ke state space
[A, B, C, D] = tf2ss(num, den);

% Menampilkan hasil
disp('Matriks A:');
disp(A);
disp('Matriks B:');
disp(B);
disp('Matriks C:');
disp(C);
disp('Matriks D:');
disp(D);