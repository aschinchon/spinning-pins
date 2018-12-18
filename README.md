# Spinning Pins

An R experiment to create animated patterns made by pins in movement. 

An example:

<img src="https://fronkonstin.com/wp-content/uploads/2018/12/pins_1.gif" style="max-height: 100px; max-width: 100px;" />


## Getting Started

### Prerequisites

You will need to install the following packages (if you don't have them already):

```
install.packages("tidyverse")
install.packages("data.table")
install.packages("gganimate")
```
## Parameters

Animations depend on three main parameters:

+ `n_points`: Dimension of the grid (`n_points` x `n_points`)
+ `closeness`: Separation of consecutive pins between columns (in radians).
+ `speed`: Incremental angle to add in each frame to all pins
+ `v_angles`: Initial arrange of pins

## More info

A complete explanation of the experiment can be found [at fronkonstin](https://fronkonstin.com/2018/12/19/spinning-pins/)

Animation is obtained thanks to `gganimate` package, by [Thomas Lin Pedersen](https://twitter.com/thomasp85),available [here](https://github.com/thomasp85/gganimate).

## Author: 

Antonio Sánchez Chinchón:

  + [Twitter](https://twitter.com/aschinchon)
  + [LinkedIn](https://www.linkedin.com/in/aschinchon/)

