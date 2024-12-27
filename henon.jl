using PyPlot;
pygui(true);                                  # pygui: open plot in seperate interactive window if true

function henon(num, a, b)                     # e.g.henon(1e6,1.4,0.3)     

    x, y = Float64(0), Float64(0)             # origin point
    u, v = Float64[], Float64[]               # point vectors (x,y)
    markerstyle = "."                         # scatter plot marker style
    markersize = 0.0001                       # scatter plot marker size
    color = "red"                             # scatter plot color

    for i = 1:num
        push!(u, x)
        push!(v, y)
        xx, yy = 1 - a * x^2 + y, b * x
        x, y = xx, yy
    end

    figure = PyPlot.gcf()
    figure.set_size_inches(12, 8)
    #scatter(u, v, s=markersize, marker=markerstyle, c=color)
    scatter(u, v, s=markersize, marker=markerstyle, c=color)
    
    #figure #use figure if pygui=false                                
end

henon(1e6, 1.4, 0.3)


