% This script calculates the mean, median, and mode for the industrial

data = readtable('industrial_production_index.csv');

% Define the entity and time range for analysis (example: Germany, 2023) Please generate graphs for Two more countries or regions 
entity = 'Germany';
time_range = [datetime(2023, 1, 1), datetime(2023, 12, 31)]; % edit this range based on entity row

% Filter data for the selected entity and time range
filtered_data = data(strcmp(data.GeopoliticalEntity, entity) & data.Time >= time_range(1) & data.Time <= time_range(2), :);

% Extract the production index values for calculations
production_index = filtered_data.ProductionVolume;

% Calculate basic statistics
mean_value = mean(production_index);
median_value = median(production_index);
mode_value = mode(production_index);

% Display results
disp(['Mean Production Index for ', entity, ' (', datestr(time_range(1)), ' to ', datestr(time_range(2)), '): ', num2str(mean_value)]);
disp(['Median Production Index for ', entity, ' (', datestr(time_range(1)), ' to ', datestr(time_range(2)), '): ', num2str(median_value)]);
disp(['Mode Production Index for ', entity, ' (', datestr(time_range(1)), ' to ', datestr(time_range(2)), '): ', num2str(mode_value)]);
