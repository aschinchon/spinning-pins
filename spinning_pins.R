library(tidyverse)
library(data.table)
library(gganimate)

# 1st pattern
n_points  <- 20
closeness <- 2*pi/n_points
speed     <- 2*pi/n_points
v_angles <- seq(0, 2*pi, length.out = n_points)

# 2nd pattern
n_points  <- 20
closeness <- 0
speed     <- 2*pi/n_points
v_angles <- seq(0, by=pi/2, length.out = n_points)

# 3rd pattern
n_points  <- 20
closeness <- 2*pi/n_points
speed     <- 2*pi/n_points
v_angles <- seq(0, 0, length.out = n_points)

# 4th pattern
n_points  <- 20
closeness <- pi/4
speed     <- 2*pi/n_points
v_angles <- seq(0, by=pi/4, length.out = n_points)

# This function creates a grid of vectors (coordinates and angle)
# using a initial vector of angles adding factor f each iteration
create_grid <- function(n, a, f) {
    lapply(seq_len(n), function (x) {a+f*(x-1)}) %>% 
    do.call("rbind", .) %>% 
    melt(varnames=c('x', 'y'), value.name="angle")
}

# This is what makes to spin the pins 
lapply(1:(n_points+1), function(x) {
  create_grid(n_points, 
              v_angles+(x-1)*speed,
              closeness)}) %>% 
  as.list(.) %>% 
  rbindlist(idcol="frame") -> df

# Plot pins using frame as transition time
ggplot(df) +
  geom_spoke(aes(x=x, y=y, angle = angle), radius = 1) +
  geom_point(aes(x+cos(angle), y+sin(angle)), size=4) +
  theme_void() + 
  coord_fixed() +
  transition_time(time=frame)

# Do you want to save it?
anim_save("choose_a_name.gif")

