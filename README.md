# learning_julia
## juliaでIPythonの%runのようなもの
    macro run(file, args...)
        args = [file, args...]
        return esc(:(ARGS = map(string, $args)[2:end]; include(string($args[1]))))
    end
https://groups.google.com/forum/#!topic/julia-users/D3lstnWccxY
