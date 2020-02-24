function eigen = eigcomp(A)
c=poly(A);
lambda = roots(c);
[n1,m1] =size(lambda);
lambda = round(roots(c)*10000)/10000;
fprintf('The eigenvalues are: \n');
disp(lambda);
lambda = unique(lambda);
lambda = unique(round(roots(c)*10000)/10000);
fprintf('To solve eigenvectors, we need the unique eigenvalues which are: \n');
disp(lambda
[n2,m2] =size(lambda);
for i=l:l:n2
disp(printf('\n Elgenvectors for eigenvale: \n lambda =%d\n',lambda(i)));
homsoln(A-lambda(i)*eye(sizeA),l)
end
%EIGEN Summary of this function goes here
%   Detailed explanation goes here
end

