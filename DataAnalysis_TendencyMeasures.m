% Number of hours studied by a group of students in a week.
study_hours = [2, 4, 4, 5, 5, 5, 6, 7, 8, 8, 10, 10, 15];

% -------- Calculation of Measures --------
% Mean:
% Sum all values and divide by the number of data points.
mean_value = mean(study_hours);
disp(['The mean of study hours is: ', num2str(mean_value)]);

% Median:
% Sort the values and find the central value.
median_value = median(study_hours);
disp(['The median of study hours is: ', num2str(median_value)]);

% Mode:
% Determine the value that appears most frequently.
mode_value = mode(study_hours);
disp(['The mode of study hours is: ', num2str(mode_value)]);

% -------- Central Tendency Analysis --------
if mean_value > median_value
    disp('Analysis: The mean is greater than the median, indicating a positive skew (to the right).');
elseif mean_value < median_value
    disp('Analysis: The mean is less than the median, indicating a negative skew (to the left).');
else
    disp('Analysis: The mean and median are equal, suggesting a symmetric distribution.');
end

% -------- Additional Information about the Mode --------
if mean_value == mode_value && median_value == mode_value
    disp('Additionally, the mean, median, and mode coincide, indicating a perfectly symmetric distribution.');
elseif mode_value ~= mean_value && mode_value ~= median_value
    disp('The mode is different from both the mean and the median, which may indicate multimodality or skewness in the data.');
else
    disp('The mode is close to the mean and/or median, supporting a representative central tendency.');
end

% -------- Graphical Visualization --------
% Visualize these measures in a plot for exploratory analysis
% In this case, using a histogram
figure;
histogram(study_hours);
title('Histogram of Study Hours');
xlabel('Hours');
ylabel('Frequency');
