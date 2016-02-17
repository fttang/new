%% Question 1 a) Vectors and matrices
% Create a vector named odds that contains all odd numbers between 1 and 100
odd = [1:100];
oddcount = 0;
for i = 1:numel(odd);
    if mod(odd(i),2) == 1; % find odd numbers
        oddcount = oddcount + 1; % index it in odds
        odds(oddcount) = odd(i);
    end;
end;
display(odds);
%% Question 1 b)
% Create a vector named backcounter that counts from 1000 to 100, counting backwards by 50's
backcounter = [1000:-50:100]

%% Question 1 c)
% Create a matrix named squares with 3 columns...
squares = [1:.25:20];
squares = squares.'; % transpose row to column
for i = 1:numel(squares);
    squares (i, 2) = squares (i, 1) ^ 2;
    squares (i, 3) = sqrt(squares (i, 1));
end
[rows, columns] = size(squares); 
display(rows, 'number of rows');
display(columns, 'number of columns');
display(numel(squares), 'number of elements in this matrix');
display(squares);

%% Question 1 d)
% 13th row and 2nd column, 27th row and all columns
display(squares(13, 2));
display(squares(27, :));

%% Question 2 a) Loops
% Compute the product of all integers from 2 to 9
product = 1;
for i = 2:9;
    product =  product * i;
end;
display(product);
prod(2:9)

%% Question 2 b)
% Integers between 1 and 200 divisible by 7
divisible = [1:200];
dcount = 0;
for i = 1:numel(divisible);
    if mod(divisible(i), 7) == 0;
        dcount = dcount + 1;
    end;
end;
display(dcount);

%% Question 3 a) Coin Flips
% Flip a coin, randomly generate 0 or 1.
randi(2) - 1

%% Question 3 b)
% Count number of heads in 10 coin flips
heads = 0;
repeat = 10;
for i = 1:repeat;
    coin = randi(2) - 1;
    if coin == 0;
        heads = heads + 1;
    end;
end;
display(heads);

%% Question 3 c)
% At least 1 heads in 3 flips?
heads = 0;
repeat = 3;
for i = 1:repeat;
    coin = randi(2) - 1;
    if coin == 0;
        heads = heads + 1;
    end;
end;
if heads >= 1;
    display yes;
else
    display no;
end;

%% Question 3 d)
% repeat 100,000 times, how many times at least 1 heads?
positive = 0;
trial = 100000;
for i = 1:trial;
    heads = 0;
    repeat = 3;
    for i = 1:repeat;
        coin = randi(2) - 1;
        if coin == 0;
            heads = heads + 1;
        end;
    end;
    if heads >= 1;
        positive = positive + 1;
    end;
end;
positive / trial

%% Question 4
% I wanted to learn more data science application in biology and how to use Matlab to do actual research.
%% Question 5
% I spent about 2 hours working by myslef.
