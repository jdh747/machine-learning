function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%   
    % FIND RETURNS ARRAY OF INDICIES MEETING ARGUMENT COND.
    positive_set = find(y==1); negative_set = find(y==0);
    
    %PLOT POSITIVE SET
    plot(X(positive_set,1), X(positive_set,2), 'k+');
    %PLOT NEGATIVE SET
    plot(X(negative_set,1), X(negative_set,2), 'ko', 'MarkerFaceColor', 'y');
    legend('Admitted', 'Not Admitted');
    axis([30 100 30 100]);
% =========================================================================



hold off;

end
