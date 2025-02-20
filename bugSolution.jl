```julia
function improved_my_function(x)
  if isnan(x) || isinf(x)
    return NaN  #Or throw an error
  elseif x > 0
    return x^2
  else
    return -x
  end
end

result = improved_my_function(NaN)
println(result) # Output: NaN
result = improved_my_function(Inf)
println(result) # Output: NaN
```