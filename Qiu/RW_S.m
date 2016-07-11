for k=1:9
if (abs(T(k,k+1))>=10^(-10))
    d=(T(2,2)-T(1,1))/2;
        if T(2,3)^2>=2*T(2,1)^2
            s=T(1,1);          %Rayleigh quotient shift
        else
            s=T(1,1)-sign(d)*(T(2,1)^2/(abs(d^2)+(d^2+T(2,1)^2)^(1/2)));          %Wilkinson's shift
        end
        T=T-s*eye(11);
        [Q,R]=qr(inv(T));
        Q=(inv(Q))';
        L=(inv(R))';
        T=L*Q+s*eye(11);
end
end
[m1,n1]=eig(T)