for k=1:9
if (abs(T(k,k+1))>=10^(-10))
 s=T(1,1);          %Rayleigh quotient shift
     T=T-s*eye(11);
     [Q,R]=qr(inv(T));
     Q=(inv(Q))';
     L=(inv(R))';
     T=L*Q+s*eye(11);
end
end
[m2,n2]=eig(T)