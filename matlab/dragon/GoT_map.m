clear all
clc

tic;
%% Game of Thrones Map
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

for j = 19:22
    got(1,j) = 2;
end

for i = 2:3
    for j = 18:19
        got(i,j) = 2;
    end
end     

got(1,14)  = 2; got(1,15)  = 2; got(1,16) = 2; got(2,14) = 2;
got(2,15)  = 2; got(4,3)   = 2; got(8,4)  = 2; got(8,12) = 2;
got(9,4)   = 2; got(9,12)  = 2; got(10,4) = 2; got(13,5) = 2;
got(13,12) = 2; got(13,13) = 2; got(14,7) = 2; got(14,9) = 2;
got(14,10) = 2; got(2,20)  = 2; got(2,22) = 2; got(3,17) = 2;
got(4,16)  = 2; got(4,18)  = 2;

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

for i = 24:27
    for j = 18:22
        got(i,j) = 3;
    end
end

for i = 28:29
    for j = 21:22
        got(i,j) = 3;
    end
end

for i = 32:33
    for j = 26:29
        got(i,j) = 3;
    end
end

for i = 33:36
    got(i,34) = 3;
end

for j = 32:36
    got(37,j) = 3;
end

for i = 18:19
    for j = 38:40
        got(i,j) = 3;
    end
end

for i = 24:36
    for j = 43:45
        got(i,j) = 3;
    end
end

for i = 39:40
    for j = 42:44
        got(i,j) = 3;
    end
end

for i = 28:32
    got(i,42) = 3;
end

for i = 35:36
    for j = 56:58
        got(i,j) = 3;
    end
end

for i = 37:38
    for j = 57:58
        got(i,j) = 3;
    end
end

for i = 39:42
    for j = 56:61
        got(i,j) = 3;
    end
end

for i = 43:44
    for j = 56:58
        got(i,j) = 3;
    end
end

got(14,14) = 3; got(14,15) = 3; got(25,7)  = 3; got(25,8)  = 3;
got(25,11) = 3; got(25,12) = 3; got(26,7)  = 3; got(26,12) = 3;
got(26,13) = 3; got(28,8)  = 3; got(33,7)  = 3; got(34,7)  = 3;
got(34,8)  = 3; got(23,18) = 3; got(25,23) = 3; got(26,17) = 3;
got(26,23) = 3; got(27,17) = 3; got(28,19) = 3; got(28,20) = 3;
got(32,30) = 3; got(32,31) = 3; got(32,32) = 3; got(34,28) = 3;
got(34,29) = 3; got(36,31) = 3; got(36,32) = 3; got(36,35) = 3;
got(38,35) = 3; got(18,41) = 3; got(19,37) = 3; got(19,41) = 3;
got(20,38) = 3; got(20,39) = 3; got(23,43) = 3; got(37,43) = 3;
got(37,44) = 3; got(38,44) = 3; got(41,42) = 3; got(41,43) = 3;
got(34,57) = 3; got(36,59) = 3; got(36,60) = 3; got(38,59) = 3;
got(43,59) = 3; got(43,60) = 3; got(45,55) = 3; got(45,56) = 3;
got(31,13) = 3; got(32,13) = 3; got(32,14) = 3; got(37,31) = 3;

%The North Region
for i = 15:17
    for j = 9:13
        got(i,j) = 5;
    end
end

for i = 16:17
    for j = 14:15
        got(i,j) = 5;
    end
end

for i = 18:21
    for j = 6:13
        got(i,j) = 5;
    end
end

got(14,11) = 5; got(14,12) = 5; got(16,6) = 5; got(17,7) = 5;
got(17,8)  = 5; got(19,5)  = 5; got(20,5) = 5;

%Desert Region 
for i = 34:35 
    for j = 9:13
        got(i,j) = 4;
    end
end

for j = 17:18
    got(28,j) = 4;
end
for j = 22:23
   got(35,j) = 4; 
end

for i = 29:33
    for j = 17:20
        got(i,j) = 4;
    end
end

for i = 31:33
   got(i,21) = 4; 
end

for j = 18:27
    got(34,j)=4;
end

for i = 35:37
    for j = 26:27
        got(i,j) = 4;
    end
end

for i = 37:39
    got(i,25) = 4;
end

for i = 36:40
    got(i,28) = 4;
end

for i = 39:40
    got(i,26) = 4;
end

for j = 30:33
    got(33,j) = 4;
end
for i = 34:35
    for j = 32:33
        got(i,j) = 4;
    end
end
    
for j = 32:34
    got(38,j) = 4;
end

for j = 34:35
    got(39,j) = 4; 
end

for i = 34:36
   for j = 36:42
       got(i,j) = 4;
   end
end

for i = 34:35
    got(i,35) = 4; 
end

for j = 36:42
    got(33,j) = 4;
end

for j = 36:42
    got(35,j) = 4; 
end

for j = 37:42
   got(37,j) = 4; 
end

for j = 39:40
    got(38,j) = 4;
end

for i = 28:35
    for j = 46:53
        got(i,j) = 4;
    end
end

for i = 26:27
    for j = 50:52
        got(i,j) = 4;
    end
end

for i = 24:25
    got(i,50) = 4;
end

for i = 28:34
    got(i,54) = 4;
end

for i = 36:37
    for j = 51:53
        got(i,j) = 4;
    end
end

got(35,8)  = 4; got(34,14) = 4; got(35,25) = 4; got(36,33) = 4; 
got(32,41) = 4; got(25,51) = 4; got(27,49) = 4; got(27,53) = 4;
got(36,46) = 4; got(36,54) = 4;

%Westeros and Essos Region
for i = 21:31
    for j = 9:10
        got(i,j) = 5;
    end
end

for j = 5:8
    got(22,j) = 5;
end

for i = 29:30
    for j = 5:8
        got(i,j) = 5;
    end
end

for i = 27:30
    got(i,12) = 5;
end

for i = 26:30
    got(i,11) = 5;
end

for i = 31:33
    for j =6:7
        got(i,j) = 5;
    end
end

for i = 27:31
    for j = 23:41
        got(i,j) = 5;
    end
end

for i = 32:33
    for j = 22:25
        got(i,j) = 5;
    end
end

for i = 25:26
    for j = 31:42
        got(i,j) = 5;
    end
end

for i = 25:26
    for j = 26:29
        got(i,j) = 5;
    end
end

for j = 36:42
    got(24,j) = 5;
end

for j = 39:41
    got(23,j) = 5;
end

for j = 27:29
    got(24,j) = 5;
end

for j = 33:40
    got(32,j) = 5;
end

for j = 35:37
    got(33,j) = 5;
end

for i = 26:33
    for j = 56:61
        got(i,j) = 5;
    end
end

for i = 24:25
    for j = 59:61
        got(i,j) = 5;
    end
end

for i = 34:35
    for j = 59:61
        got(i,j) = 5;
    end
end

for i = 33:40
    got(i,55) = 5;
end

for i = 37:38
    got(i,56) = 5;
end

for i = 37:38
    for j = 45:50
        got(i,j) = 5;
    end
end

for j = 47:50
    got(36,j) = 5;
end

for i = 38:39
    for j = 51:54
        got(i,j) = 5;
    end
end

for i = 39:40
    for j = 48:50
        got(i,j) = 5;
    end
end

for i = 47:51
    for j = 30:38
        got(i,j) = 5;
    end
end

for i = 45:46
    for j = 31:38
        got(i,j) = 5;
    end
end

for i = 50:51
    for j = 28:29
        got(i,j) = 5;
    end
end

for i = 42:43
    for j = 40:41
        got(i,j) = 5;
    end
end

for i = 45:46
    got(i,40) = 5;
end

for i = 42:44
    for j = 43:44
        got(i,j) = 5;
    end
end

for i = 48:51
    for j = 54:61
        got(i,j) = 5;
    end
end

for j = 55:61
    got(47,j) = 5;
end

for j = 59:61
    got(46,j) = 5;
end

for i = 40:43
    got(i,52) = 5;
end

for i = 25:27
    for j = 46:47
        got(i,j) = 5;
    end
end

for j = 15:16
    got(41,j) = 5;
end

for j = 17:18
    got(44,j) = 5;
end

for i = 45:46
    for j = 17:19
        got(i,j) = 5;
    end
end

got(23,8)  = 5; got(27,5)  = 5; got(32,5)  = 5; got(33,5)  = 5;
got(34,6)  = 5; got(27,13) = 5; got(29,13) = 5; got(30,13) = 5;
got(25,14) = 5; got(26,14) = 5; got(26,8)  = 5; got(27,8)  = 5;
got(25,13) = 5; got(31,8)  = 5; got(30,21) = 5; got(30,22) = 5; 
got(27,42) = 5; got(22,39) = 5; got(26,28) = 5; got(26,24) = 5; 
got(26,25) = 5; got(26,30) = 5; got(24,31) = 5; got(24,32) = 5;
got(34,58) = 5; got(36,61) = 5; got(34,56) = 5; got(37,54) = 5; 
got(39,47) = 5; got(46,29) = 5; got(47,29) = 5; got(44,38) = 5; 
got(44,39) = 5; got(45,39) = 5; got(44,61) = 5; got(31,22) = 5;
got(35,54) = 5; got(27,55) = 5; got(28,55) = 5; got(23,28) = 5;
got(42,51) = 5; got(43,51) = 5; got(24,47) = 5; got(27,48) = 5;
got(42,17) = 5; got(46,16) = 5; got(47,17) = 5; got(46,20) = 5;

%% Food Location Map 
% Food Resource Initialization

fd = got;

fd(15,12) = 9; fd(17,9)  = 9; fd(19,12) = 9; fd(20,7)  = 9;
fd(24,12) = 9; fd(27,8)  = 9; fd(29,11) = 9; fd(32,7)  = 9;
fd(26,19) = 9; fd(11,47) = 9; fd(33,24) = 9; fd(45,18) = 9;
fd(28,27) = 9; fd(32,31) = 9; fd(26,33) = 9; fd(36,34) = 9;
fd(28,37) = 9; fd(25,39) = 9; fd(30,40) = 9; fd(26,43) = 9;
fd(49,31) = 9; fd(46,34) = 9; fd(48,37) = 9; fd(41,43) = 9;
fd(31,44) = 9; fd(36,44) = 9; fd(38,47) = 9; fd(39,52) = 9;
fd(26,60) = 9; fd(27,57) = 9; fd(33,58) = 9; fd(37,56) = 9;
fd(40,59) = 9; fd(43,57) = 9; fd(48,59) = 9; fd(50,55) = 9;
fd(2,2)   = 9; fd(1,16)  = 9; fd(3,19)  = 9; fd(5,7)   = 9;
fd(9,5)   = 9; fd(10,10) = 9; fd(35,13) = 9; fd(23,18) = 9;
fd(28,17) = 9; fd(33,17) = 9; fd(40,26) = 9; fd(19,39) = 9;
fd(29,34) = 9; fd(25,50) = 9; fd(29,53) = 9; fd(31,50) = 9;
fd(34,46) = 9; fd(34,52) = 9; fd(43,40) = 9; fd(43,52) = 9;
fd(1,9)   = 9; fd(14,7)  = 9; fd(17,4)  = 9; fd(21,2)  = 9;
fd(5,11)  = 9; fd(23,9)  = 9; fd(24,5)  = 9; fd(28,3)  = 9;
fd(6,2)   = 9; fd(34,2)  = 9; fd(36,10) = 9; fd(37,6)  = 9;
fd(13,3)  = 9; fd(40,3)  = 9; fd(40,9)  = 9; fd(43,5)  = 9;
fd(45,1)  = 9; fd(46,8)  = 9; fd(49,4)  = 9; fd(43,12) = 9;
fd(48,14) = 9; fd(38,14) = 9; fd(31,14) = 9; fd(11,14) = 9;
fd(22,15) = 9; fd(26,15) = 9; fd(41,17) = 9; fd(36,19) = 9;
fd(38,23) = 9; fd(49,22) = 9; fd(44,26) = 9; fd(35,29) = 9;
fd(40,32) = 9; fd(40,38) = 9; fd(47,43) = 9; fd(43,48) = 9;
fd(47,52) = 9; fd(28,47) = 9; fd(6,16)  = 9; fd(22,61) = 9;
fd(9,18)  = 9; fd(14,17) = 9; fd(19,17) = 9; fd(6,21)  = 9;
fd(3,25)  = 9; fd(8,25)  = 9; fd(11,22) = 9; fd(16,20) = 9;
fd(21,22) = 9; fd(18,24) = 9; fd(13,26) = 9; fd(21,26) = 9;
fd(16,28) = 9; fd(19,31) = 9; fd(22,34) = 9; fd(5,28)  = 9;
fd(1,31)  = 9; fd(7,32)  = 9; fd(12,32) = 9; fd(10,29) = 9;
fd(15,34) = 9; fd(3,34)  = 9; fd(18,36) = 9; fd(9,36)  = 9;
fd(5,37)  = 9; fd(13,38) = 9; fd(2,39)  = 9; fd(22,41) = 9;
fd(16,41) = 9; fd(7,41)  = 9; fd(19,45) = 9; fd(14,44) = 9;
fd(3,44)  = 9; fd(10,42) = 9; fd(22,47) = 9; fd(10,61) = 9;
fd(6,46)  = 9; fd(17,48) = 9; fd(20,51) = 9; fd(23,54) = 9;
fd(20,57) = 9; fd(17,54) = 9; fd(14,50) = 9; fd(16,59) = 9;
fd(13,56) = 9; fd(10,53) = 9; fd(8,49)  = 9; fd(2,50)  = 9;
fd(5,53)  = 9; fd(1,55)  = 9; fd(7,57)  = 9; fd(4,59)  = 9;

food = zeros(51,61,3);

% Food Location
food(15,12,1) = 1; food(17,9,1)  = 2; food(19,12,1) = 3; food(20,7,1)  = 4;
food(24,12,1) = 1; food(27,8,1)  = 2; food(29,11,1) = 3; food(32,7,1)  = 4;
food(26,19,1) = 1; food(11,47,1) = 2; food(33,24,1) = 4; food(45,18,1) = 3;
food(28,27,1) = 1; food(32,31,1) = 2; food(26,33,1) = 3; food(36,34,1) = 4;
food(28,37,1) = 1; food(25,39,1) = 2; food(30,40,1) = 3; food(26,43,1) = 4;
food(49,31,1) = 1; food(46,34,1) = 2; food(48,37,1) = 3; food(41,43,1) = 4;
food(31,44,1) = 1; food(36,44,1) = 2; food(38,47,1) = 3; food(39,52,1) = 4;
food(26,60,1) = 1; food(27,57,1) = 2; food(33,58,1) = 3; food(37,56,1) = 4;
food(40,59,1) = 1; food(43,57,1) = 2; food(48,59,1) = 3; food(50,55,1) = 4;
food(2,2,1)   = 2; food(1,16,1)  = 2; food(3,19,1)  = 2; food(5,7,1)   = 2;
food(9,5,1)   = 2; food(10,10,1) = 2; food(35,13,1) = 2; food(23,18,1) = 2;
food(28,17,1) = 2; food(33,17,1) = 2; food(40,26,1) = 2; food(19,39,1) = 2;
food(29,34,1) = 2; food(25,50,1) = 2; food(29,53,1) = 2; food(31,50,1) = 2;
food(34,46,1) = 2; food(34,52,1) = 2; food(43,40,1) = 2; food(43,52,1) = 2;
food(1,9,1)   = 2; food(14,7,1)  = 2; food(17,4,1)  = 2; food(21,2,1)  = 2;
food(5,11,1)  = 2; food(23,9,1)  = 2; food(24,5,1)  = 2; food(28,3,1)  = 2;
food(6,2,1)   = 2; food(34,2,1)  = 2; food(36,10,1) = 2; food(37,6,1)  = 2;
food(13,3,1)  = 2; food(40,3,1)  = 2; food(40,9,1)  = 2; food(43,5,1)  = 2;
food(45,1,1)  = 2; food(46,8,1)  = 2; food(49,4,1)  = 2; food(43,12,1) = 2;
food(48,14,1) = 2; food(38,14,1) = 2; food(31,14,1) = 2; food(11,14,1) = 2;
food(22,15,1) = 2; food(26,15,1) = 2; food(41,17,1) = 2; food(36,19,1) = 2;
food(38,23,1) = 2; food(49,22,1) = 2; food(44,26,1) = 2; food(35,29,1) = 2;
food(40,32,1) = 2; food(40,38,1) = 2; food(47,43,1) = 2; food(43,48,1) = 2;
food(47,52,1) = 2; food(28,47,1) = 2; food(6,16,1)  = 2; food(22,61,1) = 2;
food(9,18,1)  = 2; food(14,17,1) = 2; food(19,17,1) = 2; food(6,21,1)  = 2;
food(3,25,1)  = 2; food(8,25,1)  = 2; food(11,22,1) = 2; food(16,20,1) = 2;
food(21,22,1) = 2; food(18,24,1) = 2; food(13,26,1) = 2; food(21,26,1) = 2;
food(16,28,1) = 2; food(19,31,1) = 2; food(22,34,1) = 2; food(5,28,1)  = 2;
food(1,31,1)  = 2; food(7,32,1)  = 2; food(12,32,1) = 2; food(10,29,1) = 2;
food(15,34,1) = 2; food(3,34,1)  = 2; food(18,36,1) = 2; food(9,36,1)  = 2;
food(5,37,1)  = 2; food(13,38,1) = 2; food(2,39,1)  = 2; food(22,41,1) = 2;
food(16,41,1) = 2; food(7,41,1)  = 2; food(19,45,1) = 2; food(14,44,1) = 2;
food(3,44,1)  = 2; food(10,42,1) = 2; food(22,47,1) = 2; food(10,61,1) = 2;
food(6,46,1)  = 2; food(17,48,1) = 2; food(20,51,1) = 2; food(23,54,1) = 2;
food(20,57,1) = 2; food(17,54,1) = 2; food(14,50,1) = 2; food(16,59,1) = 2;
food(13,56,1) = 2; food(10,53,1) = 2; food(8,49,1)  = 2; food(2,50,1)  = 2;
food(5,53,1)  = 2; food(1,55,1)  = 2; food(7,57,1)  = 2; food(4,59,1)  = 2;

% Food Amount
food(15,12,2) = 70; food(17,9,2)  = 20; food(19,12,2) = 20; food(20,7,2)  = 20;
food(24,12,2) = 70; food(27,8,2)  = 20; food(29,11,2) = 20; food(32,7,2)  = 20;
food(26,19,2) = 70; food(11,47,2) = 20; food(33,24,2) = 20; food(45,18,2) = 20;
food(28,27,2) = 70; food(32,31,2) = 20; food(26,33,2) = 20; food(36,34,2) = 20;
food(28,37,2) = 70; food(25,39,2) = 20; food(30,40,2) = 20; food(26,43,2) = 20;
food(49,31,2) = 70; food(46,34,2) = 20; food(48,37,2) = 20; food(41,43,2) = 20;
food(31,44,2) = 70; food(36,44,2) = 20; food(38,47,2) = 20; food(39,52,2) = 20;
food(26,60,2) = 70; food(27,57,2) = 20; food(33,58,2) = 20; food(37,56,2) = 20;
food(40,59,2) = 70; food(43,57,2) = 20; food(48,59,2) = 20; food(50,55,2) = 20;
food(2,2,2)   = 20; food(1,16,2)  = 20; food(3,19,2)  = 20; food(5,7,2)   = 20;
food(9,5,2)   = 20; food(10,10,2) = 20; food(35,13,2) = 20; food(23,18,2) = 20;
food(28,17,2) = 20; food(33,17,2) = 20; food(40,26,2) = 20; food(19,39,2) = 20;
food(29,34,2) = 20; food(25,50,2) = 20; food(29,53,2) = 20; food(31,50,2) = 20;
food(34,46,2) = 20; food(34,52,2) = 20; food(43,40,2) = 20; food(43,52,2) = 20;
food(1,9,2)   = 20; food(14,7,2)  = 20; food(17,4,2)  = 20; food(21,2,2)  = 20;
food(5,11,2)  = 20; food(23,9,2)  = 20; food(24,5,2)  = 20; food(28,3,2)  = 20;
food(6,2,2)   = 20; food(34,2,2)  = 20; food(36,10,2) = 20; food(37,6,2)  = 20;
food(13,3,2)  = 20; food(40,3,2)  = 20; food(40,9,2)  = 20; food(43,5,2)  = 20;
food(45,1,2)  = 20; food(46,8,2)  = 20; food(49,4,2)  = 20; food(43,12,2) = 20;
food(48,14,2) = 20; food(38,14,2) = 20; food(31,14,2) = 20; food(11,14,2) = 20;
food(22,15,2) = 20; food(26,15,2) = 20; food(41,17,2) = 20; food(36,19,2) = 20;
food(38,23,2) = 20; food(49,22,2) = 20; food(44,26,2) = 20; food(35,29,2) = 20;
food(40,32,2) = 20; food(40,38,2) = 20; food(47,43,2) = 20; food(43,48,2) = 20;
food(47,52,2) = 20; food(28,47,2) = 20; food(6,16,2)  = 20; food(22,61,2) = 20;
food(9,18,2)  = 20; food(14,17,2) = 20; food(19,17,2) = 20; food(6,21,2)  = 20;
food(3,25,2)  = 20; food(8,25,2)  = 20; food(11,22,2) = 20; food(16,20,2) = 20;
food(21,22,2) = 20; food(18,24,2) = 20; food(13,26,2) = 20; food(21,26,2) = 20;
food(16,28,2) = 20; food(19,31,2) = 20; food(22,34,2) = 20; food(5,28,2)  = 20;
food(1,31,2)  = 20; food(7,32,2)  = 20; food(12,32,2) = 20; food(10,29,2) = 20;
food(15,34,2) = 20; food(3,34,2)  = 20; food(18,36,2) = 20; food(9,36,2)  = 20;
food(5,37,2)  = 20; food(13,38,2) = 20; food(2,39,2)  = 20; food(22,41,2) = 20;
food(16,41,2) = 20; food(7,41,2)  = 20; food(19,45,2) = 20; food(14,44,2) = 20;
food(3,44,2)  = 20; food(10,42,2) = 20; food(22,47,2) = 20; food(10,61,2) = 20;
food(6,46,2)  = 20; food(17,48,2) = 20; food(20,51,2) = 20; food(23,54,2) = 20;
food(20,57,2) = 20; food(17,54,2) = 20; food(14,50,2) = 20; food(16,59,2) = 20;
food(13,56,2) = 20; food(10,53,2) = 20; food(8,49,2)  = 20; food(2,50,2)  = 20;
food(5,53,2)  = 20; food(1,55,2)  = 20; food(7,57,2)  = 20; food(4,59,2)  = 20;

% Temp Food Location
food(15,12,3) = 1;  food(17,9,3)  = 2;  food(19,12,3) = 3;  food(20,7,3)  = 4;
food(24,12,3) = 1;  food(27,8,3)  = 2;  food(29,11,3) = 3;  food(32,7,3)  = 4;
food(26,19,3) = 1;  food(11,47,3) = 2;  food(33,24,3) = 4;  food(45,18,3) = 3;
food(28,27,3) = 1;  food(32,31,3) = 2;  food(26,33,3) = 3;  food(36,34,3) = 4;
food(28,37,3) = 1;  food(25,39,3) = 2;  food(30,40,3) = 3;  food(26,43,3) = 4;
food(49,31,3) = 1;  food(46,34,3) = 2;  food(48,37,3) = 3;  food(41,43,3) = 4;
food(31,44,3) = 1;  food(36,44,3) = 2;  food(38,47,3) = 3;  food(39,52,3) = 4;
food(26,60,3) = 1;  food(27,57,3) = 2;  food(33,58,3) = 3;  food(37,56,3) = 4;
food(40,59,3) = 1;  food(43,57,3) = 2;  food(48,59,3) = 3;  food(50,55,3) = 4;
food(2,2,3)   = 2;  food(1,16,3)  = 2;  food(3,19,3)  = 2;  food(5,7,3)   = 2;
food(9,5,3)   = 2;  food(10,10,3) = 2;  food(35,13,3) = 2;  food(23,18,3) = 2;
food(28,17,3) = 2;  food(33,17,3) = 2;  food(40,26,3) = 2;  food(19,39,3) = 2;
food(29,34,3) = 2;  food(25,50,3) = 2;  food(29,53,3) = 2;  food(31,50,3) = 2;
food(34,46,3) = 2;  food(34,52,3) = 2;  food(43,40,3) = 2;  food(43,52,3) = 2;
food(1,9,3)   = 2;  food(14,7,3)  = 2;  food(17,4,3)  = 2;  food(21,2,3)  = 2;
food(5,11,3)  = 2;  food(23,9,3)  = 2;  food(24,5,3)  = 2;  food(28,3,3)  = 2;
food(6,2,3)   = 2;  food(34,2,3)  = 2;  food(36,10,3) = 2;  food(37,6,3)  = 2;
food(13,3,3)  = 2;  food(40,3,3)  = 2;  food(40,9,3)  = 2;  food(43,5,3)  = 2;
food(45,1,3)  = 2;  food(46,8,3)  = 2;  food(49,4,3)  = 2;  food(43,12,3) = 2;
food(48,14,3) = 2;  food(38,14,3) = 2;  food(31,14,3) = 2;  food(11,14,3) = 2;
food(22,15,3) = 2;  food(26,15,3) = 2;  food(41,17,3) = 2;  food(36,19,3) = 2;
food(38,23,3) = 2;  food(49,22,3) = 2;  food(44,26,3) = 2;  food(35,29,3) = 2;
food(40,32,3) = 2;  food(40,38,3) = 2;  food(47,43,3) = 2;  food(43,48,3) = 2;
food(47,52,3) = 2;  food(28,47,3) = 2;  food(6,16,3)  = 2;  food(22,61,3) = 2;
food(9,18,3)  = 2;  food(14,17,3) = 2;  food(19,17,3) = 2;  food(6,21,3)  = 2;
food(3,25,3)  = 2;  food(8,25,3)  = 2;  food(11,22,3) = 2;  food(16,20,3) = 2;
food(21,22,3) = 2;  food(18,24,3) = 2;  food(13,26,3) = 2;  food(21,26,3) = 2;
food(16,28,3) = 2;  food(19,31,3) = 2;  food(22,34,3) = 2;  food(5,28,3)  = 2;
food(1,31,3)  = 2;  food(7,32,3)  = 2;  food(12,32,3) = 2;  food(10,29,3) = 2;
food(15,34,3) = 2;  food(3,34,3)  = 2;  food(18,36,3) = 2;  food(9,36,3)  = 2;
food(5,37,3)  = 2;  food(13,38,3) = 2;  food(2,39,3)  = 2;  food(22,41,3) = 2;
food(16,41,3) = 2;  food(7,41,3)  = 2;  food(19,45,3) = 2;  food(14,44,3) = 2;
food(3,44,3)  = 2;  food(10,42,3) = 2;  food(22,47,3) = 2;  food(10,61,3) = 2;
food(6,46,3)  = 2;  food(17,48,3) = 2;  food(20,51,3) = 2;  food(23,54,3) = 2;
food(20,57,3) = 2;  food(17,54,3) = 2;  food(14,50,3) = 2;  food(16,59,3) = 2;
food(13,56,3) = 2;  food(10,53,3) = 2;  food(8,49,3)  = 2;  food(2,50,3)  = 2;
food(5,53,3)  = 2;  food(1,55,3)  = 2;  food(7,57,3)  = 2;  food(4,59,3)  = 2;

%% Dragon Visuallization
% Dragon Parameter
time = 43200; % hours
naga(1,1)  = 20;    naga(2,1)  = 30;    naga(3,1) = 30;
naga(1,2)  = 10;    naga(2,2)  = 30;    naga(3,2) = 57;
naga(1,3)  = 0;     naga(2,3)  = 0;     naga(3,3) = 0;
naga(1,4)  = 20;    naga(2,4)  = 30;    naga(3,4) = 30;
naga(1,5)  = 10;    naga(2,5)  = 30;    naga(3,5) = 57;
naga(1,6)  = false; naga(2,6)  = false; naga(3,6) = false;
naga(1,7)  = 1341;  naga(2,7)  = 1341;  naga(3,7) = 1341;
naga(1,8)  = 0;     naga(2,8)  = 0;     naga(3,8) = 0;
naga(1,9)  = 0;     naga(2,9)  = 0;     naga(3,9) = 0;
naga(1,10) = 6;     naga(2,10) = 7;     naga(3,10) = 8;
naga(1,11) = 0;     naga(2,11) = 0;     naga(3,11) = 0;
naga(1,12) = 0;     naga(2,12) = 0;     naga(3,12) = 0;
naga(1,13) = true;  naga(2,13) = true;  naga(3,13) = true;
naga(1,14) = 8;     naga(2,14) = 8;     naga(3,14) = 8;
naga(1,15) = 2;     naga(2,15) = 2;     naga(3,15) = 2;
naga(1,16) = false; naga(2,16) = false; naga(3,16) = false;
naga(1,17) = 0;     naga(2,17) = 0;     naga(3,17) = 0;
naga(1,18) = 0;     naga(2,18) = 0;     naga(3,18) = 0;
naga(1,19) = 10;    naga(2,19) = 10;    naga(3,19) = 10;
naga(1,20) = 0.3;   naga(2,20) = 0.3;   naga(3,20) = 0.3;
naga(1,21) = 0;     naga(2,21) = 0;     naga(3,21) = 0;

% Dragon Matrix
for k = 1:time
    for i = 1:51
        for j = 1:61
            drg(i,j,k) = got(i,j);
        end
    end
end

drg(naga(1,1),naga(1,2),2) = 6;
drg(naga(2,1),naga(2,2),2) = 7;
drg(naga(3,1),naga(3,2),2) = 8;

%% Dragon Simulation
for k = 3:time
    disp(['Progress = ', num2str(k/time*100), '%'])
    if naga(1,13) == false && naga(2,13) == false && naga(3,13) == false
        disp(['Dead at ', num2str(k/24), 'days'])
        break
    end
    drg(:,:,k) = drg(:,:,k-1);
    for n = 1:3
        if naga(n,13) == true
            if naga(n,15) == 24 - naga(n,14)
                naga(n,16) = true;
            else
                naga(n,16) = false;
                naga = combat(drg, naga, n, k);
                if naga(n,13) == false
                    drg(naga(n,1),naga(n,2),k) = got(naga(n,1),naga(n,2));
                else
                    if naga(n,8) < naga(n,7)
                        [drg, food, naga] = eat(drg, naga, food, n, k);
                        if naga(n,6) == false
                            [drg, naga] = search(drg, got, naga, food, n, k);
                            if naga(n,6) == false
                                if naga(n,21) > 3
                                    [drg, naga] = starve(drg, got, naga, n, k);
                                else
                                    [drg, naga] = drg_mov(drg, got, naga, n, k);
                                end
                            end
                        end
                    else
                        [drg, naga] = drg_mov(drg, got, naga, n, k);
                    end
                end
            end       
        else
            if drg(naga(n,1),naga(n,2),k) == naga(n,10)
                drg(naga(n,1),naga(n,2),k) = got(naga(n,1),naga(n,2));
            end
        end
    end
    % Daily function here
    [food, naga] = daily(food, got, naga, k);
end

toc;
return
%% Simulation

map = [0.3010 0.7450 0.9330; 1 1 1; 0.5 0.5 0.5; 0.9290 0.6940 0.125; 0 0.8 0; 1 0 0; 0 0 1; 0 0 0; 1 0.8 0.8; 0 0 0.2471];
colormap(map)

set(gcf,'units','normalized','outerposition',[0 0 1 1])

for k = 3940:3950
    ax = gca;
    ax.YDir = 'reverse';
    a = imread('yoyo1.jpg');
    image('CData',a,'XData',[0.5 61.5],'YData',[0.5 51.5])
%     hold on
%     r = image(fd);
%     alpha(r,1)
    hold on
    dragon = drg(:,:,k);
    s = image(dragon);
    alpha(s,0.8)
    if mod(k,24) > 4 && mod(k,24) < 12
        day = 'Morning';
    else
        if mod(k,24) > 11 && mod(k,24) < 17
            day = 'Afternoon';
        else
            if mod(k,24) > 16 && mod(k,24) < 20
                day = 'Evening';
            else
                day = 'Night';
            end
        end
    end
    title({'Game of Thrones Dragon Simulation'; ['Day ' num2str(floor(k/24),'%2.2d') ' - ' day]; ['Time ' num2str(mod(k,24),'%2.2d') ':00']},'FontSize',20,'Color',[0 0.6 0.6])
    axis off
    M(k) = getframe;
    pause(2)
end

%%
for k = 1:43200
    if drg(naga(1,1),naga(1,2),k) == 6
        k
    end
end