maze_1
start = [1, 1];
end_ = [4, 7];

route = astar_2d(map, start, end_);

fig_num = 1;

plot_map(map, fig_num);
plot_start_stop(start-1, end_-1, fig_num)

plot_route(route, fig_num);
