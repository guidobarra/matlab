%---------------------------------------------------------------------------------------------------------------------------------------------
%Cree una matriz de 3x3 de ceros.
%Cree una matriz de 3x4 de unos.
%Cree una matriz identidad de 5x5.
%Cree una matriz de 2x2 con el valor “pi”.
%Cree una matriz de 4x4 aleatoria.
%Obtenga la diagonal de la matriz creada antes.
%Genere una matriz diagonal con los valores obtenidos antes.
%Obtenga una matriz triangular inferior a partir de la matriz aleatoria.
%---------------------------------------------------------------------------------------------------------------------------------------------

% Cree una matriz de 3x3 de ceros.
matZeros = zeros(3);

% Cree una matriz de 3x4 de unos.
matOnes = ones(3, 4);

% Cree una matriz identidad de 5x5.
matIdent = eye(5);

% Cree una matriz de 2x2 con el valor “pi”.
matPI = pi*ones(2);

% Cree una matriz de 4x4 aleatoria.
matRandom = rand(4);

% Obtenga la diagonal de la matriz creada antes.
VecDiagOfMatRandom=diag(matRandom);
resulTrace = trace(matRandom);

% Genere una matriz diagonal con los valores obtenidos antes.
matDiagonal=diag(VecDiagOfMatRandom);

% Obtenga una matriz triangular inferior a partir de la matriz aleatoria.
MatTrianInf=tril(matRandom);