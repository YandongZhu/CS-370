load('data.mat','x','y','v');

L = length(x); %the length for the data

for i = 1:L
    plot(x{i}, y{i}, 'b*');
    hold on
end
title('part1');
figure %create new figure window

for i = 1:L
    plot(x{i}, y{i}, 'b');
    hold on
end
title('part2');

figure

for j = 1:L
    [x_cs,y_cs]= parametricSpline(x{j}, y{j});
    plot(x_cs,y_cs,'b');
    hold on
end
title('natural spline');
axis off;
figure

for j = 1:L
    [x_cs,y_cs,t]= condition(x{j}, y{j});
    plot(x_cs,y_cs,'black');
    hold on
end
axis off;
title('not a knot');


