function W = gschmidt(A)            %last updated 1/19/96
%GSCHMIDT  The Gram-Schmidt process on the columns in matrix 
%          A. The orthonormal basis appears in the columns of W
%          unless there is a second argument in which case W 
%          contains only an orthogonal basis. The second argument
%          can have any dummy value d.
%
%          Use in the form  ==> W = gschmidt(A)    <==  
%                       or  ==> W = gschmidt(A,d)  <==
%
%  By: David R. Hill, MATH Department, Temple University
%      Philadelphia, Pa., 19122        Email: hill@math.temple.edu
%
[m,n]=size(A);
W=A(:,1);
for k = 2:n  % orthogonalization process
   z=0;
   for j=1:k-1
      p=W(:,j);
      z=z+((p'*A(:,k))/(p'*p))*p;
   end
   W=[W A(:,k)-z];
end
if nargin == 1
   for j=1:n, W(:,j) = W(:,j)/norm(W(:,j));end % normalizing
end
