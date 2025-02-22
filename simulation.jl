using DifferentialEquations, Plots, StaticArrays
include("nbody_solver.jl")
include("visualization.jl")

const N = 50
const G = 1.0
const central_mass = 1000.0

particles = initialize_particles(N, central_mass)
params = (G=G,)
tspan = (0.0, 20.0)
prob = ODEProblem(nbody!, particles, tspan, params)
sol = solve(prob, Vern7(), saveat=0.1)

x = [sol.u[k][6*(i-1)+1] for k in 1:length(sol), i in 1:N]
y = [sol.u[k][6*(i-1)+2] for k in 1:length(sol), i in 1:N]
z = [sol.u[k][6*(i-1)+3] for k in 1:length(sol), i in 1:N]

create_animation(x, y, z, "nbody_simulation.gif")
