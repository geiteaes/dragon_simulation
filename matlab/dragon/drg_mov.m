function [drg, naga] = drg_mov(drg, got, naga, n, k)

% Random Walk
walk = rand;
if naga(n,3) == 2 % Direction before = right
    if walk <= 0.33
        naga(n,2) = naga(n,2) + 1;
        naga(n,3) = 2;
        x = 0;  y = -1;
    else
        if walk <= 0.66
            naga(n,1) = naga(n,1) - 1;
            naga(n,3) = 3;
            x = 1;  y = 0;
        else
            naga(n,1) = naga(n,1) + 1;
            naga(n,3) = 4;
            x = -1;  y = 0;
        end
    end
else
    if naga(n,3) == 1 % Direction before = left
        if walk <= 0.33
            naga(n,2) = naga(n,2) - 1;
            naga(n,3) = 1;
            x = 0;  y = 1;
        else
            if walk <= 0.66
                naga(n,1) = naga(n,1) - 1;
                naga(n,3) = 3;
                x = 1;  y = 0;
            else
                naga(n,1) = naga(n,1) + 1;
                naga(n,3) = 4;
                x = -1;  y = 0;
            end
        end
    else
        if naga(n,3) == 4 % Direction before = below
            if walk <= 0.33
            naga(n,2) = naga(n,2) - 1;
            naga(n,3) = 1;
            x = 0;  y = 1;
            else
                if walk <= 0.66
                    naga(n,2) = naga(n,2) + 1;
                    naga(n,3) = 2;
                    x = 0;  y = -1;
                else
                    naga(n,1) = naga(n,1) + 1;
                    naga(n,3) = 4;
                    x = -1;  y = 0;
                end
            end
        else
            if naga(n,3) == 3 % Direction before = up
                if walk <= 0.33
                    naga(n,2) = naga(n,2) - 1;
                    naga(n,3) = 1;
                    x = 0;  y = 1;
                    else
                        if walk <= 0.66
                            naga(n,2) = naga(n,2) + 1;
                            naga(n,3) = 2;
                            x = 0;  y = -1;
                        else
                            naga(n,1) = naga(n,1) - 1;
                            naga(n,3) = 3;
                            x = 1;  y = 0;
                        end
                end
            else
                if walk <= 0.25
                    naga(n,2) = naga(n,2) - 1;
                    naga(n,3) = 1;
                    x = 0;  y = 1;
                else
                    if walk <= 0.5
                        naga(n,2) = naga(n,2) + 1;
                        naga(n,3) = 2;
                        x = 0;  y = -1;
                    else
                        if walk <= 0.75
                            naga(n,1) = naga(n,1) - 1;
                            naga(n,3) = 3;
                            x = 1;  y = 0;
                        else
                            naga(n,1) = naga(n,1) + 1;
                            naga(n,3) = 4;
                            x = -1;  y = 0;               
                        end
                    end
                end
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

