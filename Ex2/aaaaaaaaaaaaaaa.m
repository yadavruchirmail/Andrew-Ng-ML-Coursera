
o=X*theta;
h=sigmoid(o)
J=sum(-y.*(log(h))-(1-y).*(log(1-h))) +(lambda/2)*sum(theta.^2);
J=J/m



degree = 6;
out = ones(size(X1(:,1)));
for i = 1:degree
    for j = 0:i
        out(:, end+1) = (X1.^(i-j)).*(X2.^j);
    end
end

end