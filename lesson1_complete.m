%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tutorial by Zachary Canann
% Association for Computing Machinery
% University of California, Merced
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 1) Calculator style commands work (mostly) as one would expect.
% Matlab supports all common operations (+, -, /, *, and ^)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

2 + 2
(1 + 3) * 2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 2) Semicolons can be used to suppress output.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

3 + 3
2 + 2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 3) Variables can be created to hold values. Note that the equals
% sign does NOT represent a mathematical equality, but rather an
% assignment.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = 2 ^ 2
b = a + 5
b = b * a

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 4) Matlab has many special built in variables. This includes:
% pi        % The value pi
% eps       % Epsilon (The smallest incremental number)
% inf       % Infinity
% NaN       % Not a number ie 0/0
% i and j   % Square root of -1
% realmin   % Smallest usable positive real number
% realmax   % Largest usable positive real number
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = pi
b = eps
c = NaN * 5

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 5) There are many built in mathematical functions ready for use.
% Includes sin, cos, tan, asin, acos, atan, log, exp, abs, and others
% Also, exp(1) can be used to generate Euler's number.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = cos(2 * pi)
b = exp(1)
c = log(b)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 6) Variables can also be vectors, which are described by placing
% values within braces. Value ranges and increments are described by using
% colons.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v = [2 2]
v = [0 1 2 3 4 5 6 7 8 9 10]
v = [0 : 10]
v = [0 : 2 : 10]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 7) Vectors can also be multidimensional, or in other words a
% matrix. Each row is separated by a semicolon.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = [ 1 2 3; 4 5 6; 7 8 9]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 8) The transpose operation (') can be used to transpose both
% vectors and matricies.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v = [0 : 5]'
m = [1 2 3; 4 5 6; 7 8 9]'
m = [[1 2 3]' [4 5 6]' [7 8 9]']

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 9) There are many useful built in functions for generating
% matricies in matlab, including:
% zeros(m, n)	% Generates an mxn matrix filled with zeros
% ones(m, n)	% Generates an mxn matrix filled with ones
% eye(m, n)     % Generates an mxn identity matrix
% rand(m, n)    % Generates an mxn matrix filled with random decimal values
%               % from zero to 1.0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = zeros(3, 6)
m = ones(3, 6)
m = eye(3, 3)
m = rand(3, 6)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 10) Elements of matricies or vectors can be accessed through
% indexing with parenthesis.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v = [1 : 10]
a = v(5)
m = [1 : 10; 11 : 20; 21 : 30]
b = m(3, 5)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 11) Elements of matricies or vectors can be updated through
% indexing with parenthesis.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v = [1 : 10]
v(5) = -100
m = [1 : 10; 11 : 20; 21 : 30]
m(3, 5) = -100

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 12) Sub-matricies and vectors can be accessed through indexing
% with parenthesis and a specified range.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v = [1 : 10]
a = v(5 : 10)
m = [1 : 10; 11 : 20; 21 : 30]
b = m(1 : 3, 1 : 6)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 13) Values can also be assigned to the original matrix or vector 
% using index ranges.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v = [1 : 10]
v(5 : 10) = 0
m = [1 : 10; 11 : 20; 21 : 30]
m(1 : 2, 1 : 5) = m(1 : 2, 1 : 5) * 10

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 14) Values can be assigned to entire rows or columns of matricies
% at the same time, without needing to specify the exact range using the
% colon operator.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v = [1 : 10]
v(:) = 2
m = ones(5, 2) * 5
m(:, 1) = 2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 15) To delete elements from matricies or vectors, we can simply
% assign the value [].
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v = [1 : 10]
v(5) = []
m = rand(4, 2)
m(:, 2) = []

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 16) To concatenate elements from matricies or vectors into a
% single array, we can use the concatenation operator []. Horizontal
% concatenation is done by comma or space separation, vertical
% concatenation is done by semicolon seperation.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v = [1 : 10]
v = [v; v]

v = [1 : 5]
v = [v v]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 17) Vectors can be multiplied together, given that the number of
% rows of one vector are equal to the number of columns in the other.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

v = [1 : 5]
y = [1 : 5]'
z = v * y

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 18) Matricies can be multiplied together, again given that the
% number of rows in one matrix match the number of columns in the second
% matrix.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = ones(3, 1) * 2
n = ones(1, 3) * 3
z = m * n

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 19) For matricies of the exact same size, or if the second value
% is a scalar, element wise multiplication, division, and powers can be
% done using .* and ./ and .^ respectively.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = [[1 : 5]; [6 : 10]]
n = ones(2, 5) * 10
z = m .* n
z = z .^ 0.5

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 20) Matlab has built in functions for other mathematical
% operations as well, including: sum, std, mean, mode, and others.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = rand(3, 5)
b = sum(a)
c = std(a)
d = mean(a)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 21) Matricies can be 'unrolled' into a single dimensional vector
% using the colon operator and by not specifying a range.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = rand(3, 4)
v = a(:)
b = sum(v)
c = std(v)
d = mean(v)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ADDENDUM - Some useful built in Matlab workspace related functions:
% help 			% Literally the most useful thing. ex) help cos
% format short	% Formats the output to display less decimals
% format long	% Formats the output to display more decimals
% clear all     % Clears all variables in the workspace
% clc           % Clears all text from the command window
% close all     % Closes any windows generated by Matlab
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
