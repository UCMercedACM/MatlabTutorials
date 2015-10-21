%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tutorial by Zachary Canann
% Association for Computing Machinery
% University of California, Merced
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 1) Continuous functions can be plotted with the plot() function
% by passing in a vector containing the x values, and another vector of the
% same size containing the y values.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 0 : 1 : 100;
y = 2 * x;
plot(x, y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 2) Scatter plots can be created the same way as linear functions,
% using the scatter() function instead of plot();
%
% Axis scales can be fixed with the axis() function, which is
% useful when we do not want Matlab to make that decision for us.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mu = 1.0;
sigma = 0.25;
gaussian = normrnd(mu, sigma, 100, 2);
scatter(gaussian(:, 1), gaussian(:, 2));

% Fix our axis scaling
axis([0 2 0 2]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 3) Adding labels and titles is done through the title(),
% xlabel(), and ylabel() functions. Each of these take a single parameter:
% the text one wishes to display.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 0 : 0.1 : 4 * pi;
y = sin(x);
plot(x, y);

title('sin function');      
xlabel('value (radians)');
ylabel('amplitude');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 4) Multiple plots can be added to the same figure using the 'hold
% on' and 'hold off' commands.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all;
hold on;

x = 0 : 1 : 10;
y = 2 * x;
plot(x, y);

y = x .^ 2;
plot(x, y);

hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 5) Adding legends can be done with the legend() function, which
% must be given a string for each line being plotted.
% 
% Also, the location of the legend can be set by calling the function
% legend('Location', ...), with a cardinal direction, such as 'NorthEast'.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all;
hold on;
x = 0 : 1 : 10;
y = -5 * x + 40;
plot(x, y);

y = x.^2 - x;
plot(x, y);
hold off;

legend('Linear', 'Quadratic');
legend('Location', 'NorthWest');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 6) Multiple (separate) plots can be added to the same window
% through use of the subplot command: subplot(nrows, ncols, plot_number)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 0 : 0.1 : 2 * pi;

% plot sine function
subplot(2, 2, 1);
plot(x, sin(x));

% plot cosine function
subplot(2, 2, 2);
plot(x, cos(x));

% plot negative exponential function
subplot(2, 2, 3);
plot(x, exp(-x));

% plot x^3
subplot(2, 2, 4);
plot(x, x.^3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 7) Multiple (separate) plots can be created in different windows
% by calling the 'figure' command before the call to the plot function.
% Without this, the most recent figure will constantly be overwritten.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 0 : 0.1 : 2 * pi;

figure;
plot(x);

figure;
plot(sin(x));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 8) Bar graphs can be created with the bar() function by passing
% in a vector containing the height of each bar.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

y = 0 : 10 : 100;
bar(y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 9) Bar graphs can be assigned labels by passing in another
% argument to the bar() function with the corresponding labels for each
% bar.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 1900 : 10 : 2000;
y = 0 : 10 : 100;
bar(x, y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 10) Bar graphs can be broken into groupings by passing in a vector
% with the bar values, with each group separated by a semicolon.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

y = [5 10 15; 1 2 3; 7 5 9; 11 12 13];
bar(y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 11) Bar graphs may also be grouped as stacks by passing in
% the string 'stacked' as a parameter to the bar() function.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

y = [5 10 15; 1 2 3; 7 5 9; 11 12 13];
bar(y, 'stacked');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 12) Pie charts can be created using the pie() or pie3() function.
% The first argument is a vector of values, which do not need to be broken
% down into percentages, as this is done automatically. The second argument
% is a vector of labels. If none are provided, percentages will be used as
% the labels.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = [650, 32, 185, 95, 15];
y = {'Oxygen', 'Nitrogen', 'Carbon', 'Hydrogen', 'Calcium'};
pie(x, y);
% pie3(x, y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 13) Histograms can be created by calling the histogram() function
% and passing in a vector of variables. An appropriate number of bins will
% automatically be calculated.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = randn(1000, 1);
histogram(x);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 14) The number of histogram bins desired can also be passed as
% the second argument if the default value is not appropriate for the
% problem.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = randn(1000, 1);
histogram(x, 10);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 15) Contour maps can be generated from 3D grid data using the
% contour() function. Example 3D gridded data can be generated using the
% built in Matlab 'peaks' command.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[x, y, z] = peaks;
contour(x, y, z, 25);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 16) 3D Contours can be generated in the same way, simply by
% calling countour3().
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[x, y, z] = peaks;
contour3(x, y, z, 25);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 17) 3D line graphs can be created using the plot3() function,
% and passing in x, y, and z vectors of the same length.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 0 : 0.1 : 8 * pi;
y = sin(x);
z = cos(x);
plot3(x, y, z);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 18) 3D mesh graphs can be created using the mesh() function,
% and passing in x, y, and z gridded data.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[x, y] = meshgrid(-2 : 0.2 : 2);	% Create plane using the meshgrid() function
z = x.*exp(-x.^2 - y.^2);           % Calculate 3d function
mesh(x, y, z);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 19) 3D surface graphs can be created using the surf() function,
% and passing in x, y, and z gridded data.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[x, y, z] = peaks;
surf(x, y, z);
colorbar;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE 20) 3D scatter plots can be created similar to 2D scatter plots,
% using the scatter3() function, giving a z component as well.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

mu = 1.0;
sigma = 0.25;
x = normrnd(mu, sigma, 1000, 1);
y = normrnd(mu, sigma, 1000, 1);
z = normrnd(mu, sigma, 1000, 1);

scatter3(x, y, z);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ADDENDUM - This is by no means an exhaustive list of the plotting
% capabilities of Matlab, and instead this tutorial was meant to expose
% users to the different commonly used 2D and 3D plotting functions.
% 
% For more detailed documentation refer to:
% http://www.mathworks.com/help/matlab/2-and-3d-plots.html
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
