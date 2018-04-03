load("uwaterloo.mat");
[p, ~] = PageRank(G, 0.85);
[y, I] = sort(p, 'descend');
for n = 1:min(length(I),20)
	disp([num2str(n) ': ' U{I(n)}]);
end % for
spy(G);
xlabel("webpage");
ylabel("webpage");
title("Sparsity");