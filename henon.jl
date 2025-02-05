using PyPlot
pygui(true)  # Open plot in a separate interactive window

function henon(num, a, b)  
    x, y = 0.0, 0.0  # Origin point
    u = Vector{Float64}(undef, num)  # Preallocate x-coordinates
    v = Vector{Float64}(undef, num)  # Preallocate y-coordinates

    for i in 1:num
        u[i], v[i] = x, y
        x, y = 1 - a * x^2 + y, b * x  # Tuple unpacking for efficiency
    end

    figure = PyPlot.gcf()
    figure.set_size_inches(12, 8)
    scatter(u, v, s=0.0001, marker=".", c="red")  # Plot points
end

henon(1_000_000, 1.4, 0.3)


