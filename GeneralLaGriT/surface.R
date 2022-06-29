library(lattice)

# Make a grid
vec = pi
x =  seq(-1*vec,vec,length.out = 201)
y=x
grid <- expand.grid(x=x, y=y)


## Project your function on the grid and store in Z
z = with(grid, -cos(x)-cos(y))
grid$z = z * 500
grid$x = seq(-1,1,length.out = 201) * 5000
grid$y = grid$x

# ## Plot the grid
# lattice::wireframe(z ~ x*y, data=grid, shade=TRUE, main="X=Y",
#           scales=list(arrows=FALSE)
# )

## Write out a table of the values.
write.table(format(grid,digits=10),file = 'surface',quote = FALSE,sep = "\t",dec = ".",row.names = FALSE,col.names = FALSE)