function [drg, food, naga] = eat(drg, naga, food, n, k)

if food(naga(n,1),naga(n,2),1) > 0
    if food(naga(n,1),naga(n,2),1) == 1
        if food(naga(n,1),naga(n,2),2) > 1
            food(naga(n,1),naga(n,2),2) = food(naga(n,1),naga(n,2),2) - 2;
            naga(n,8) = naga(n,8) + 2*268052;
            naga(n,9) = naga(n,9) + 2*268052;
        else
            food(naga(n,1),naga(n,2),2) = food(naga(n,1),naga(n,2),2) - 1;
            naga(n,8) = naga(n,8) + 268052;
            naga(n,9) = naga(n,9) + 268052;
        end
    else
        if food(naga(n,1),naga(n,2),1) == 2
            food(naga(n,1),naga(n,2),2) = food(naga(n,1),naga(n,2),2) - 1;
            naga(n,8) = naga(n,8) + 844550;
            naga(n,9) = naga(n,9) + 844550;
        else
            if food(naga(n,1),naga(n,2),1) == 3
                food(naga(n,1),naga(n,2),2) = food(naga(n,1),naga(n,2),2) - 1;
                naga(n,8) = naga(n,8) + 1001000;
                naga(n,9) = naga(n,9) + 1001000;
            else
                food(naga(n,1),naga(n,2),2) = food(naga(n,1),naga(n,2),2) - 1;
                naga(n,8) = naga(n,8) + 1430000;
                naga(n,9) = naga(n,9) + 1430000;
            end
        end
    end
    drg(naga(n,1),naga(n,2),k) = naga(n,10);
    naga(n,6) = true;
    naga(n,21) = 0;
    naga(n,3) = 0;
else
    naga(n,6) = false;
end
