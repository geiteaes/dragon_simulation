clear all
clc
close all 

%Map Initialization
got = ones(51,61);

%Arctic Region
for i = 1:3
    for j = 1:13
        got(i,j) = 2;
    end
end

for i = 4:7
    for j = 4:13
        got(i,j) = 2;
    end
end

for i = 8:11
    for j = 5:11
        got(i,j) = 2;
    end
end

for i = 12:13
    for j = 6:11
        got(i,j) = 2;
    end
end

got(1,14)  = 2; got(1,15)  = 2; got(1,16) = 2; got(2,14) = 2;
got(2,15)  = 2; got(4,3)   = 2; got(8,4)  = 2; got(8,12) = 2;
got(9,4)   = 2; got(9,12)  = 2; got(10,4) = 2; got(13,5) = 2;
got(13,12) = 2; got(13,13) = 2; got(14,7) = 2; got(14,9) = 2;
got(14,10) = 2;

%Mountain Region
for i = 23:24
    for j = 11:14
        got(i,j) = 3;
    end
end

for i = 27:28
    for j = 6:7
        got(i,j) = 3;
    end
end

for i = 31:32
    for j = 11:12
        got(i,j) = 3;
    end
end

for i = 32:33
    for j = 8:10
        got(i,j) = 3;
    end
end



got(14,14) = 3; got(14,15) = 3; got(25,7) = 3; got(25,8)  = 3;
got(25,11) = 3; got(25,12) = 3; got(26,7) = 3; got(26,12) = 3;
got(26,13) = 3; got(28,8)  = 3; got(33,7) = 3; got(34,7)  = 3;
got(34,8)  = 3; got(13,13) = 2; got(14,7) = 2; got(14,9) = 2;

%Desert Region 
for i=34:35 
    for j=9:13
        got(i,j)=4;
end
end

for j=17:18
    got(28,j)=4;
end
for j=22:23
   got(35,j)=4; 
end
for i=29:33
    for j=17:20
        got(i,j)=4;
    end
    
end

for i=31:33
   got(i,21)=4; 
end

for j=18:27
got(34,j)=4;
end

for i=35:37
    for j=26:27
    got(i,j)=4;
    end
end
for i=37:39
    got(i,25)=4;
end

for i=36:40
    got(i,28)=4;
end

for i=39:40
    got(i,26)=4;
end

for j=30:33
    got(33,j)=4;
end
for i=34:35
    for j=32:33
        got(i,j)=4;
    end
end
    
for j=32:34
    got(38,j)=4;
end
for j=34:35
   got(39,j)=4; 
end
for i=34:36
   for j=36:42
       got(i,j)=4;
   end
end
for i=34:35
   got(i,35)=4; 
end
for j=36:42
    got(33,j)=4;
end
for j=36:42
   got(35,j)=4; 
end
for j=37:42
   got(37,j)=4; 
end
for j=39:40
    got(38,j)=4;
end
for i=28:35
    for j=46:53
        got(i,j)=4;
    end
end

for i=26:27
    for j=50:52
        got(i,j)=4;
    end
end

for i=24:25
got(i,50)=4;
end

for i=28:34
    got(i,54)=4;
end

for i=36:37
    for j=51:53
        got(i,j)=4;
    end
end

got(35,8)=4; got(34,14)=4; got (35,25)=4; got(36,33)=4; got(32,41)=4;
got(25,51)=4; got(27,49)=4; got(27,53)=4; got(36,46)=4; got(36,54)=4;


map = [0.3010 0.7450 0.9330; 1 1 1; 0.5 0.5 0.5; 0.9290 0.6940 0.125; 0 0.8 0];
colormap(map)
s=image(got)
alpha(s,0.5)