G = sparse([0 0 0 0 0 1 0;
            0 0 0 0 1 0 0;
            1 1 0 0 0 0 0;
            1 0 0 0 0 0 0;
            0 0 0 1 0 0 0;
            0 0 0 0 1 0 1; 
            0 1 1 1 0 0 0;]);

[p, iter] = PageRank(G, 0.85);

figure;
bar(p);
xlabel("webpage");
ylabel("porbability");
title("PageRank");
figure;
spy(G);
xlabel("webpage");
ylabel("webpage");
title("Sparsity");