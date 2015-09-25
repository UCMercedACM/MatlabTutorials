%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tutorial by Zachary Canann
% Association for Computing Machinery
% University of California, Merced
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 1) There are many data types matlab supports, each of which are
% useful for different situations. These include:
% int8, uint8       % signed/unsigned 8 bit discrete valued integer
% int16, uint16     % signed/unsigned 16 bit discrete valued integer
% int32, uint32     % signed/unsigned 32 bit discrete valued integer
% int64, uint64     % signed/unsigned 64 bit discrete valued integer
% Single, Double    % 32/64 bit continuous (decimal) valued numbers
% char              % Text. This is the same as a string in C/C++
% Boolean           % Used for binary variables, true (1) or false (0)
% struct, cell      % Advanced data types to be covered later
%
% In most cases, discrete values are int32 and continuous values are Double
% When space is a concern, data types with less bits are used.
% When precision is a concern, data types with more bits are used.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

my_text = 'hello'
my_text = [my_text ' world']

m = rand(2, 5)
m = int32(m)

m = rand(2, 5) * 500
m = uint8(m)

b = true
b = false

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 2) The 'if ... end' structure can be used to conditionally execute
% code. Comparisons include:
% 
% ==    Exactly equal
% ~=    Not equal
% >=    Greater than or equal
% <=    Less than or equal
% >     Greater than
% <     Less than
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

health = 100

if (health <= 0)
   disp('You died!') 
end

temperature = 105.0

if (temperature > 80.0)
   disp('The weather is awful outside!') 
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 3) An 'else' clause can be added to an 'if ... end' statement
% which will execute if the statement is false.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = 4
b = 4
numerator = 8

divisor = a - b

if (divisor == 0)
	disp('cannot divide by zero!')
else
    val = numerator / divisor
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 4) To compare text, use the strcmp function. This is because
% Matlab treats text as a matrix of characters, and == will treat the
% comparison as comparing two different sized matricies, which is not
% possible!
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mood = 'sad'

if (strcmp(mood, 'happy'))
    disp('Eat icecream')
else
    disp('Eat more icecream')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 5) For more than two possible branches, 'elseif' conditions can
% be created to test for different conditions.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

light = 'yellow'

if (strcmp(light, 'green'))
    disp('Go!')
elseif (strcmp(light, 'yellow'))
    disp('Go faster')
else
	disp('Stop')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 6) Multiple conditions can be combined using the 'and' and 'or
% operators.
% 
% &&	- 'and' Both conditions must be true
% ||	- 'or' One of the conditions must be true
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 15

if (x >= 10 && x <= 20)
    disp('x is between the bounds')
end

x = 5

if (x < 10 || x > 20)
    disp('x is outside the bounds')
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 7) The logical operator ~ will negate a boolean.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = true
b = ~a
c = ~b

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 8) Logical operators (==, <=, etc) can also be used in
% conjunction with the assignment operator to assign a true or false value.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = (9 == 3)
b = (3 == 3)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 9) 'for ... end' loop structures can be used to repeatedly do a
% task where the number of iterations is known beforehand.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = zeros(1, 5)

for i = 1 : 5
    m(i) = i * i
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 10) 'for ... end' loop structures can be 'nested', which is a way
% of saying that loops can be placed inside of other loops.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = zeros(4, 5)

for i = 1 : size(m, 1)
    for j = 1 : size(m, 2)
        m(i, j) = i * j
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 11) 'while ... end' loop structures can also be used to
% repeatedly do a task. These work for the same cases as 'for ... end'
% loops, but more often are used where the number of iterations is not
% known beforehand.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = zeros(1, 5)
i = 1
while i <= length(m)
    m(i) = i * i
    i = i + 1
end

initial_val = 16
approx_val = initial_val

while (abs(approx_val - initial_val / approx_val) > approx_val * eps)
   approx_val = (initial_val / approx_val + approx_val) / 2 
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 12) Infinite loops can be escaped with Ctrl+C.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%while (1 == 1)
%    disp('Infinite loop!')
%end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 13) The 'break' statement can be used to break out of loops.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

while (1 == 1)
    disp('Not an infinite loop!')
    break
    disp('This line will not run')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 14) The 'continue' statement can be used to go to the next loop
% iteration.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = zeros(1, 5)

for i = 1 : 5
    
    if (i == 2)
        continue
    end
    
    m(i) = i * i
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 15) Functions can be used to write code that one may want to run
% in multiple places in a program, without having to re-write the same
% code.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = add(4, 2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 16) Matlab supports as many inputs and outputs as needed for a
% function call.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 1
y = 1

[rho, r] = getPolar(x, y)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 17) Boolean expressions can be evaluated over entire matricies
% at once to produce a boolean matrix.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = rand(3, 5)
a = m < 0.5

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 18) Logical indexing is a way of avoiding loops and results in
% signifcantly faster and more consdensed code.
% 
% This is one of the main perks of using Matlab.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = rand(3, 5)
m(m < 0.5) = 0

% Same code with loops:
m = rand(3, 5)
for i = 1 : size(m, 1)
    for j = 1 : size(m, 2)
        if (m(i, j) < 0.5)
            m(i, j) = 0;
        end
    end
end
disp(m)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 19) If we want to save the locations or indicies of a matrix
% where a condition is true, we can use Matlab's find function. This
% allows us to store the same matrix indicies to reuse for different
% operations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = rand(3, 5)
a = find(m < 0.5)'

m(a) = m(a) * 50
m(a) = sin(m(a))

