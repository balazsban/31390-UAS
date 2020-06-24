maze_1_3D;
start = [1, 1, 1];
end_ = [9, 10, 3];

route = astar_3d(map, start, end_);

fig_num = 1;

plot_map(map, fig_num, 0);
plot_start_stop(start - 1, end_ - 1, fig_num)
plot_route(route, fig_num)

% Check Coordinates!!!!!
