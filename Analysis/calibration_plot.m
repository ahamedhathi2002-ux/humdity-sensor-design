% 1. Define the data
humidity = [20, 30, 40, 50, 60, 70, 80, 90];

% Original Measurement Sets
set1 = [1.5, 1.2, 1.1, 1.0, 0.9, 0.8, 0.7, 0.6];
set2 = [1.4, 1.1, 1.2, 1.0, 1.0, 0.7, 0.8, 0.7];
set3 = [1.4, 1.3, 1.1, 1.1, 0.9, 0.6, 0.7, 0.6];

% Calculated Average
avg_current = [1.43, 1.20, 1.13, 1.03, 0.93, 0.70, 0.73, 0.63];

% 2. Create the figure
figure;
hold on; % Allows multiple plots on the same axes

% 3. Plot individual sets (using dashed lines and smaller markers)
plot(humidity, set1, '--o', 'Color', [0.7 0.7 0.7], 'DisplayName', 'Set 1');
plot(humidity, set2, '--s', 'Color', [0.5 0.5 0.5], 'DisplayName', 'Set 2');
plot(humidity, set3, '--d', 'Color', [0.3 0.3 0.3], 'DisplayName', 'Set 3');

% 4. Plot the Average (using a thick solid line and larger markers)
plot(humidity, avg_current, '-k*', 'LineWidth', 2.5, 'MarkerSize', 10, 'DisplayName', 'Average');

% 5. Formatting the graph
xlabel('Humidity (%)');
ylabel('Current (mA)');
title('Current Measurements vs. Humidity');
legend('Location', 'northeast'); % Adds a legend to identify the lines
grid on; % Adds a background grid
axis([15 95 0.5 1.6]); % Sets the limits for X and Y axes

hold off;