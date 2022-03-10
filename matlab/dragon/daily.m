function [food, naga] = daily(food, got, naga, k)

% Hourly parameter
% Calories Outtake
for n = 1:3
    if naga(n,13) == true
        if naga(n,16) == true
            naga(n,11) = naga(n,11) + naga(n,7)/24/2;
            naga(n,12) = naga(n,12) + naga(n,7)/24/2;
        else
            naga(n,11) = naga(n,11) + naga(n,7)/24;
            naga(n,12) = naga(n,12) + naga(n,7)/24;
            naga(n,15) = naga(n,15) + 1; % Total activity time
        end
    end
    naga(n,6) = false;
end

% Food Valuation
for i = 1:51
    for j = 1:61
        if food(i,j,2) == 0
            food(i,j,1) = 0;
        end
        if mod(k,2160) == 0
            if food(i,j,3) == 1
                food(i,j,2) = min(food(i,j,2)+18,70);
            else
                food(i,j,2) = min(food(i,j,2)+5,20);
            end
        end
        if food(i,j,2) > 0
            food(i,j,1) = food(i,j,3);
        end
    end
end

% Daily Parameter
if mod(k,24) == 0
    for n = 1:3
        naga(n,17) = min(naga(n,8)-naga(n,11),naga(n,7)/6); % Yield food
        % Starvation
        if naga(n,17) <= 0
            naga(n,21) = naga(n,21) + 1;
        else
            naga(n,21) = 0;
        end
        if naga(n,21) == 7
            naga(n,13) = false;
        end
        naga(n,8) = 0; % Calories intake reset
        naga(n,11) = 0; % Calories outtake reset
        naga(n,18) = floor(k/8640); % Age
        % Weight growth
        naga(n,19) = naga(n,19) + naga(n,17) * (8*10^(-4) + 0.02 * normpdf(k/24,720,30));
        % Length growth
        naga(n,20) = naga(n,20) + max(0,naga(n,17))*(10^(-7) + 10^(-3) * normpdf(k/24,720,30));
        % Calories intake requirement
        naga(n,7) = 12.379 * naga(n,19) + 374.6762 * k/24 - 459.678 * naga(n,20) + 429.2168;
%         if k <= 17280
%             temp = 10 * exp((1/10) * (1 - exp(-0.0009*k/24)));
%         else
%             temp = 35 + 157370 / (1+exp(-0.01*((k/24 - 720) - (3*12*30))));
%         end
%         naga(n,7) = (temp/110)^(3/4) * 8000;
        naga(n,15) = 0; % Total activity time
        % Sleep time valuation
        if got(naga(n,1),naga(n,2)) == 2 % Arctic
            naga(n,14) = 4;
        else
            if got(naga(n,1),naga(n,2)) == 4 % Desert
                naga(n,14) = 10;
            else
                if got(naga(n,1),naga(n,2)) == 3 % Mountain
                    naga(n,14) = 6;
                else
                    naga(n,14) = 8;
                end
            end
        end
    end
end
        
        
        
        
        
        
    
    
    