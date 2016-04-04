using Gadfly
# using PyPlot
using StatsBase

srand(1)

n = 100
i = 1
含有率 = [0.1,0.4,0.5]
θ = [0.8,0.6,0.3] 
事前確率 = 含有率[1]
plot_data = 含有率
items = ["H","T"]
weights = [含有率[i],1-含有率[i]]

X = [sample(items,WeightVec(weights)) for i=1:n]
println("X=",X)

function bayes_post(pri_prob,x)
	if x == "H"
		numerator = pri_prob .* θ
	elseif x == "T"
		numerator = pri_prob .* (1 - θ)
	end
	post_prob = numerator / sum_kbn(numerator)
	return post_prob
end

for x in X
	事前確率 = bayes_post(事前確率,x)
	# plot_data = append!(plot_data,事前確率)
	plot_data = hcat(plot_data,事前確率)
end

println("事前確率=",事前確率)
println("plot_data=",plot_data)

plot(plot_data)
