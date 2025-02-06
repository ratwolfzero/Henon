using PyPlot
pygui(true)

function henon(num, a, b)  
    x, y = 0.0, 0.0
    u = Vector{Float64}(undef, num)
    v = Vector{Float64}(undef, num)

    for i in 1:num
        u[i], v[i] = x, y
        x, y = 1 - a * x^2 + y, b * x
    end

    fig, ax = subplots(figsize=(12, 8))  # Explicit figure creation
    plot(u, v, ".", markersize=0.01, color="red")  # Much faster than scatter
end

henon(1_000_000, 1.4, 0.3)
