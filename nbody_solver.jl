function initialize_particles(N, central_mass)
    particles = Vector{Particle{Float64}}(undef, N)
    particles[1] = Particle(SVector(0.0, 0.0, 0.0), SVector(0.0, 0.0, 0.0), central_mass)
    for i in 2:N
        particles[i] = Particle(SVector(randn(), randn(), randn()), SVector(randn(), randn(), randn()), 1.0)
    end
    return particles
end

function nbody!(du, u, p, t)
    G = p.G
    for i in 1:length(u)
        r_i = SVector{3}(u[6*(i-1)+1 : 6*(i-1)+3])
        accel = zero(r_i)
        for j in 1:length(u)
            i == j && continue
            r_j = SVector{3}(u[6*(j-1)+1 : 6*(j-1)+3])
            Δr = r_j - r_i
            r_mag = sqrt(sum(Δr.^2)) + 1e-6
            accel += G * u[end - length(u) ÷ 7 + j] * Δr / r_mag^3
        end
        du[6*(i-1)+1 : 6*(i-1)+3] = u[6*(i-1)+4 : 6*(i-1)+6]
        du[6*(i-1)+4 : 6*(i-1)+6] = accel
    end
    du[end - length(u) ÷ 7 + 1 : end] .= 0.0
end
