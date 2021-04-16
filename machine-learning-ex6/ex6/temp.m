function t = temp()
% Extract Features
file_contents = readFile('emailSample1.txt');
word_indices  = processEmail(file_contents);
n = 1899;

% You need to return the following variables correctly.
x = zeros(n, 1);
for i= 1:length(word_indices),
	x(word_indices(i,1),1) = 1;
end;

disp(x');


end;