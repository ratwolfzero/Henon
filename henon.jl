using PyPlot; pygui(false)                  # pygui open plot in seperate interactive window if true

function henon(num,a,b)                     # e.g.henon(1e6,1.4,0.3)     
    
    x,y=Float64(0),Float64(0)               # origin point
    u,v,d = Float64[],Float64[],Float64[]   # point vectors (x,y) and distance vector(d), color c of scatter = f(d)
    markerstyle="."; markersize = 0.0001
    
    for i=1:num
        push!(u,x); push!(v,y); push!(d,sqrt(x^2+y^2)); xx = 1-a*x^2+y; yy = b*x; x = xx; y = yy        
    end
    
    #uvd=unique(e->first(e,2),zip(u,v,d))
    #u = [i[1] for i in uvd]; v = [i[2] for i in uvd]; d = [i[3] for i in uvd]   
    
    figure=PyPlot.gcf()
    figure.set_size_inches(12,8)
    scatter(u,v,s=markersize,marker=markerstyle,c="red")
    (figure)
end

henon(1e7,1.4,0.3)


