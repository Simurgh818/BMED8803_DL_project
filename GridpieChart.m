% Example data: Replace with your firing rate map
gridSize = 50; % Define grid dimensions
rateMap = voxelwiseGridOriWithinROI_deg; % Replace with your actual firing rate map

% Create hexagonal grid pattern
[x, y] = meshgrid(1:gridSize, 1:gridSize);
hexPattern = mod(x + y, 2) == 0; % Alternating rows for hex pattern
rateMap(hexPattern) = NaN; % Mask firing rate map to show hexagonal lattice

% Plot the rate map
imagesc(rateMap);
colormap(jet); % Use a color map to show firing rate intensity
colorbar;
title('Hexagonal Grid Visualization');
