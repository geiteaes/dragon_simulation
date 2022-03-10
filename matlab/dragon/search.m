function [drg, naga] = search(drg, got, naga, food, n, k)

walk = false;
if naga(n,2) - 1 > 0 && food(naga(n,1),naga(n,2)-1,1) > 0
    naga(n,2) = naga(n,2) - 1;
    naga(n,3) = 1;
    x = 0;  y = 1;
    walk = true;
else
    if naga(n,2) + 1 < 62 && food(naga(n,1),naga(n,2)+1,1) > 0
        naga(n,2) = naga(n,2) + 1;
        naga(n,3) = 2;
        x = 0;  y = -1;
        walk = true;
    else
        if naga(n,1) - 1 > 0 && food(naga(n,1)-1,naga(n,2),1) > 0
            naga(n,1) = naga(n,1) - 1;
            naga(n,3) = 3;
            x = 1;  y = 0;
            walk = true;
        else
            if naga(n,1) + 1 < 52 && food(naga(n,1)+1,naga(n,2),1) > 0
                naga(n,1) = naga(n,1) + 1;
                naga(n,3) = 4;
                x = -1;  y = 0;
                walk = true;
            end
        end
    end
end

if walk == true
    naga(n,6) = true;
    if drg(naga(n,1),naga(n,2),k) > 5
        naga(n,1) = naga(n,1) + x;
        naga(n,2) = naga(n,2) + y;
        naga(n,3) = 0;
        drg(naga(n,1),naga(n,2),k) = naga(n,10);
    else
        drg(naga(n,1),naga(n,2),k) = naga(n,10);
        drg(naga(n,1)+x,naga(n,2)+y,k) = got(naga(n,1)+x,naga(n,2)+y);
    end
end