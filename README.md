# learning_julia
## juliaでIPythonの%runのようなもの
		julia> macro run(file, args...)
				       args = [file, args...]
						   return esc(:(ARGS = map(string, $args)[2:end]; include(string($args[1]))))
					 end
		
		julia> @run baysian_updating.jl

https://groups.google.com/forum/#!topic/julia-users/D3lstnWccxY

## 系列の作成(random sample的な)
		X = [sample(items,WeightVec(weights)) for i=1:n]
http://statsbasejl.readthedocs.org/en/latest/sampling.html

srand()が使えた
