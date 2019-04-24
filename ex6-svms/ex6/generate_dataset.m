%file_contents = readFile('deleteme.txt');
file_contents = readFile('data/spam/0001.bfc8d64d12b325ff385cca8d07b84288');

% remove headers by searching for a blank line
for i = 1:(length(file_contents) - 1)
  if strcmp(file_contents(i), "\n") && strcmp(file_contents(i+1), "\n")
    file_contents = file_contents(i:end);
    break
  end
end

word_indices = processEmail(file_contents);
x = emailFeatures(word_indices);
fprintf(' %d', x);
% append x to X
% append 1 to y
% do this for each spam example
% do the same for each non-spam example (but with y = 1)
% probably ought to have the same number of spam and non-spam
% split into training, cross-validaiton and test sets


