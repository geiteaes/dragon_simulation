function [drg, naga] = starve(drg, got, naga, n, k)

if naga(n,1) - naga(n,4) > 0
    naga(n,1) = naga(n,1) - 1;
    naga(n,3) = 3;
    x = 1;  y = 0;
else
    if naga(n,1) - naga(n,4) < 0
        naga(n,1) = naga(n,1) + 1;
        naga(n,3) = 4;
        x = -1;  y = 0;
    else
        if naga(n,2) - naga(n,5) > 0
            naga(n,2) = naga(n,2) - 1;
            naga(n,3) = 1;
            x = 0;  y = 1;
        else
            if naga(n,2) - naga(n,5) < 0
                naga(n,2) = naga(n,2) + 1;
                naga(n,3) = 2;
                x = 0;  y = -1;
            end
        end
    end
end

if naga(n,1) < 1 || naga(n,1) > 51 || naga(n,2) < 1 || naga(n,2) > 61 || drg(naga(n,1),naga(n,2),k) > 5
    naga(n,1) = naga(n,1) + x;
    naga(n,2) = naga(n,2) + y;
    naga(n,3) = 0;
    drg(naga(n,1),naga(n,2),k) = naga(n,10);
else
    drg(naga(n,1),naga(n,2),k) = naga(n,10);
    drg(naga(n,1)+x,naga(n,2)+y,k) = got(naga(n,1)+x,naga(n,2)+y);
end