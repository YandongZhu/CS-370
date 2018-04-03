load("uwaterloo.mat");
alpha=[0.15, 0.35, 0.55, 0.75, 0.95];
iter=zeros(1,5);
for i = 1:5
	[~, iter(i)] = PageRank(G, alpha(i));
end % for
disp(iter);
