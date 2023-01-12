function E = sQvart(D)
    n = size(D,1);
    if mod(n,2) == 0
        E(1) = median(D(1:(n/2)));
        E(2) = 0;
        E(3) = median(D((n/2)+1:n));
    else
        E(1) = median(D(1:(n-1)/2));
        E(2) = D(n/2);
        E(3) = median(D((n+3)/2:n));
    end
endfunction