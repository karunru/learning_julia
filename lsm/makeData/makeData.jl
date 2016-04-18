using Gadfly
using DataFrames

f(x) = 1.2x + 3.4

srand(1)

num = 100

x = randn(num)
y =	f(x) + randn(num)

writedlm("training.csv",[x y])

plot(x=x,y=y,Geom.point)
