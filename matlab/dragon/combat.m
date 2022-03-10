function naga = combat(drg, naga, n, k)

prob = 0.01;
temp1 = rand;  temp2 = rand;

if naga(n,2) - 1 > 0 && drg(naga(n,1),naga(n,2)-1,k) > 5 % left
    naga(n,11) = naga(n,11) + 2*naga(n,7)/24;
    naga(n,12) = naga(n,12) + 2*naga(n,7)/24;
    if temp1 <= prob
        naga(n,13) = false;
    else
        naga(n,13) = true;
    end
    
    if drg(naga(n,1),naga(n,2)-1,k) == 6
        naga(1,11) = naga(1,11) + 2*naga(1,7)/24;
        naga(1,12) = naga(1,12) + 2*naga(1,7)/24;
        if temp2 <= prob
            naga(1,13) = false;
        else
            naga(1,13) = true;
        end
    else
        if drg(naga(n,1),naga(n,2)-1,k) == 7
            naga(2,11) = naga(2,11) + 2*naga(2,7)/24;
            naga(2,12) = naga(2,12) + 2*naga(2,7)/24;
            if temp2 <= prob
                naga(2,13) = false;
            else
                naga(2,13) = true;
            end
        else
            naga(3,11) = naga(3,11) + 2*naga(3,7)/24;
            naga(3,12) = naga(3,12) + 2*naga(3,7)/24;
            if temp2 <= prob
                naga(3,13) = false;
            else
                naga(3,13) = true;
            end
        end
    end
else
    if naga(n,2) + 1 < 62 && drg(naga(n,1),naga(n,2)+1,k) > 5 % right
        naga(n,11) = naga(n,11) + 2*naga(n,7)/24;
        naga(n,12) = naga(n,12) + 2*naga(n,7)/24;
        if temp1 <= prob
            naga(n,13) = false;
        else
            naga(n,13) = true;
        end

        if drg(naga(n,1),naga(n,2)+1,k) == 6
            naga(1,11) = naga(1,11) + 2*naga(1,7)/24;
            naga(1,12) = naga(1,12) + 2*naga(1,7)/24;
            if temp2 <= prob
                naga(1,13) = false;
            else
                naga(1,13) = true;
            end
        else
            if drg(naga(n,1),naga(n,2)+1,k) == 7
                naga(2,11) = naga(2,11) + 2*naga(2,7)/24;
                naga(2,12) = naga(2,12) + 2*naga(2,7)/24;
                if temp2 <= prob
                    naga(2,13) = false;
                else
                    naga(2,13) = true;
                end
            else
                naga(3,11) = naga(3,11) + 2*naga(3,7)/24;
                naga(3,12) = naga(3,12) + 2*naga(3,7)/24;
                if temp2 <= prob
                    naga(3,13) = false;
                else
                    naga(3,13) = true;
                end
            end
        end
    else
        if naga(n,1) - 1 > 0 && drg(naga(n,1)-1,naga(n,2),k) > 5 % up
            naga(n,11) = naga(n,11) + 2*naga(n,7)/24;
            naga(n,12) = naga(n,12) + 2*naga(n,7)/24;
            if temp1 <= prob
                naga(n,13) = false;
            else
                naga(n,13) = true;
            end

            if drg(naga(n,1)-1,naga(n,2),k) == 6
                naga(1,11) = naga(1,11) + 2*naga(1,7)/24;
                naga(1,12) = naga(1,12) + 2*naga(1,7)/24;
                if temp2 <= prob
                    naga(1,13) = false;
                else
                    naga(1,13) = true;
                end
            else
                if drg(naga(n,1)-1,naga(n,2),k) == 7
                    naga(2,11) = naga(2,11) + 2*naga(2,7)/24;
                    naga(2,12) = naga(2,12) + 2*naga(2,7)/24;
                    if temp2 <= prob
                        naga(2,13) = false;
                    else
                        naga(2,13) = true;
                    end
                else
                    naga(3,11) = naga(3,11) + 2*naga(3,7)/24;
                    naga(3,12) = naga(3,12) + 2*naga(3,7)/24;
                    if temp2 <= prob
                        naga(3,13) = false;
                    else
                        naga(3,13) = true;
                    end
                end
            end
        else
            if naga(n,1) + 1 < 52 && drg(naga(n,1)+1,naga(n,2),k) > 5 % down
                naga(n,11) = naga(n,11) + 2*naga(n,7)/24;
                naga(n,12) = naga(n,12) + 2*naga(n,7)/24;
                if temp1 <= prob
                    naga(n,13) = false;
                else
                    naga(n,13) = true;
                end

                if drg(naga(n,1)+1,naga(n,2),k) == 6
                    naga(1,11) = naga(1,11) + 2*naga(1,7)/24;
                    naga(1,12) = naga(1,12) + 2*naga(1,7)/24;
                    if temp2 <= prob
                        naga(1,13) = false;
                    else
                        naga(1,13) = true;
                    end
                else
                    if drg(naga(n,1)+1,naga(n,2),k) == 7
                        naga(2,11) = naga(2,11) + 2*naga(2,7)/24;
                        naga(2,12) = naga(2,12) + 2*naga(2,7)/24;
                        if temp2 <= prob
                            naga(2,13) = false;
                        else
                            naga(2,13) = true;
                        end
                    else
                        naga(3,11) = naga(3,11) + 2*naga(3,7)/24;
                        naga(3,12) = naga(3,12) + 2*naga(3,7)/24;
                        if temp2 <= prob
                            naga(3,13) = false;
                        else
                            naga(3,13) = true;
                        end
                    end
                end
            end
        end
    end
end