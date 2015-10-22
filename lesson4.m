%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tutorial by Zachary Canann
% Association for Computing Machinery
% University of California, Merced
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = lesson4(example_number)
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % EXAMPLE 0) The rng function will ensure that random number generators
    % return the same random number every time. This is very useful for
    % debugging when the programmer wants something random yet predictable.
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    seed = 1337;
    rng(seed);
    
    % Execute the example based on the example number
    switch example_number
        case 1, example1();
        case 2, example2();
        case 3, example3();
        case 4, example4();
        case 5, example5();
        case 6, example6();
        case 7, example7();
        case 8, example8();
        case 9, example9();
        case 10, example10();
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 1) A common way of debugging code is to have the program print
% out messages using the disp() function. Depending on which ones get
% printed, it becomes easier to diagnose problems.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = example1()
    
    count_down = 3;
    
    while (count_down < 0)
       disp(count_down); 
       count_down = count_down - 1;
    end
    
    disp('Take off!');
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 2) Break points! Problematic code can often easily be resolved by
% using break points, which halt the execution of the code and allow the
% user to inspect variables, and resume execution as they please.
%
% Note that the user can execute commands in the command window, even while
% execution is paused.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = example2()
    
    text = 'the quick brown fox.';
    
    for i = 1 : length(text)
       
       % Grab the next letter
       letter = text(1);
       
       % Set a break point here!
       if (letter == '.')
           % Why does this code not execute?
           disp('End of sentence!');
       end
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 3) After a break point has been triggered, one has
% the option of stepping into, over, or out of the current line of
% execution.
%
% Step into     This is the same as normal code execution. The next line
%               of code will be executed as normal.
% Step over     If the next line of code will result in a function call,
%               the entire function will execute and then return back to
%               debugging mode.
% Step out      If inside of a function, the function will finish executing
%               before returning to debugging mode.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = example3()
    
    % Set a breakpoint here!
    example3_1();
    
end

function [vec] = example3_1()
    
    a = 10;
    
    % Stop here! Explore what happens with step into, over, and out.
    vec = example3_create_vector();
    
    vec = vec + a;

end

function [vec] = example3_create_vector()
    
    vec = zeros(10000);
    
    % This is a really long loop! Stepping out is the best option.
    for i = 1 : length(vec)
       vec(i) = i; 
    end
    
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 4) Using math functions and visualizations can often help
% diagnose problems that are otherwise difficult to determine with
% breakpoints (ie when trying to inspect a 3d or 4d matrix for problems)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = example4()
    
    % Generate 3d 50x50x50 matrix with values from 0-100
    my_3d_matrix = int32(rand([50, 50, 50])) * 100;
    
    % Display mean and median
    disp(mean(my_3d_matrix(:)));
    disp(median(my_3d_matrix(:)));
    
    % Display a histogram of the data
    histogram(my_3d_matrix(:));
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 5) Variables can be edited while execution is paused, allowing
% the user to explore 'what if' situations.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = example5()
    
    % Roll a 100,000-sided die. (Don't edit this)
    dice_roll = randi([1 100000]);
    
    % Set a breakpoint here! Change dice_roll to 123 in the 'Workspace'.
    if (dice_roll == 123)
       disp('Magic number! You win!'); 
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 6) Conditional breakpoints can be set when we only want a
% breakpoint to be activated under certain conditions.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = example6()
    
    count = 10000;
    min_temp = -20.0;
    max_temp = 20.0;
    temperatures = (max_temp - min_temp) .* rand(count, 1) + min_temp;
    temperatures = round(temperatures, 1);
    
    calculations = zeros(length(temperatures));
    for i = 1 : count
        % Break here when temperatures(i) == 0
        calculations(i) = 100.0 / temperatures(i);
    end
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 7) Floating point precision! Take numerical analysis to have a
% better grasp on this. Just know that floats are not always accurate since
% we are trying to represent an infinite range of numbers with a finite
% range of bits.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = example7()
    
    start_value = 0.1;
    stop_value = 1.1;
    
    x = start_value;
    
    while (x ~= stop_value)
        disp(x);
        x = x + 0.1;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 8) Performance bottlenecks! If there is code that the user
% suspects is slow, one can time the execution with the built in tic and
% toc commands in matlab.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = example8()

    input_values = rand(5000, 5000);
    
    % For loop version:
    tic;
    log_values = zeros(size(input_values));
    for i = 1 : size(input_values, 1)
        for j = 1 : size(input_values, 2);
            log_values(i,j) = log(input_values(i, j));
        end
    end
    toc;
    
    % Vectorized version:
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 9) Complex code can be analyzed using Matlab's 'Run and Time'
% feature. This will determine which functions are slowest.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = example9()
    
    fact = example9_factorial(30);
    fib = example9_fibonacci(30);
    gcd = example9_gcd(2147483648, 123456);
    
    disp(fact);
    disp(fib);
    disp(gcd);
    
end

function [fact] = example9_factorial(n)
    fact = 1;
    for i = 1 : n
        fact =  fact * i;
    end
end

function [fib] = example9_fibonacci(n)
    
    if(n <= 1)
    	fib = n;
    else
    	fib = example9_fibonacci(n - 1) + example9_fibonacci(n - 2);
    end
end

function [gcd] = example9_gcd(a, b)
  
    while( b ~= 0)
        r = mod(a, b);
        a = b;
        b = r;
    end
  
    gcd = a;
  
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 10) The call stack! To look at the history of function calls that
% have led to the current line of execution, one can use the dbstack
% command.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = example10()

    example10_function_1();
    
    count = example10_recursive(10);
    disp(count);
    
end

function [] = example10_function_1()
    example10_function_2();
end

function [] = example10_function_2()
    % Put a breakpoint here!
    disp('Sup');
end

function [v] = example10_recursive(n)
    
    if(n == 0)
        % Put a breakpoint here!
    	v = 0;
    else
    	v = 1 + example10_recursive(n - 1);
    end
end
