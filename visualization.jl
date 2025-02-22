function create_animation(x, y, z, filename)
    anim = @animate for k in 1:length(x[:, 1])
        scatter3d([x[k, 1]], [y[k, 1]], [z[k, 1]], markersize=10, color=:yellow, label="Star",
                 xlims=(-20, 20), ylims=(-20, 20), zlims=(-20, 20), legend=false)
        scatter3d!(x[k, 2:end], y[k, 2:end], z[k, 2:end], markersize=4, color=:lightblue, label=false)
    end
    gif(anim, filename, fps=5)
end
