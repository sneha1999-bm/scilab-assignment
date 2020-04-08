A=input("enter the maxtrix ") 
a11=input("Enter a11: ");
a12=input("Enter a12: ");
a13=input("Enter a13: ");
a21=input("Enter a21: ");
a22=input("Enter a22: ");
a23=input("Enter a23: ");
a31=input("Enter a31: ");
a32=input("Enter a32: ");
a33=input("Enter a33: ");
A=[a11,a12,a13;a21,a22,a23;a31,a32,a33];
disp(A,'A=');

[m,n]=size(A); 

for k=1:n 
 V(:,k)=A(:,k);
  for j=1:k-1 
    R(j,k)=V(:,j)'*A(:,k); 
    V(:,k)=V(:,k)-R(j,k)*V(:,j); 
  end 
 R(k,k)=norm(V(:,k)); 
 V(:,k)=V(:,k)/R(k,k);
end 

disp(V,'Q=');
