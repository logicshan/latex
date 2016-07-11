for k=1:9
if (abs(T(k,k+1))>=10^(-10))
        d=(T(2,2)-T(1,1))/2;
        s=T(1,1)-sign(d)*(T(2,1)^2/(abs(d^2)+(d^2+T(2,1)^2)^(1/2)));          %Wilkinson's shift
        T=T-s*eye(11);
        [Q,R]=qr(inv(T));
        Q=(inv(Q))';
        L=(inv(R))';
        T=L*Q+s*eye(11);
end
end
[m3,n3]=eig(T)