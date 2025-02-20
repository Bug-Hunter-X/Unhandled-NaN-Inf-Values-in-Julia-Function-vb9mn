```julia
function my_function(x)
  if x > 0
    return x^2
  else
    return -x
  end
end

result = my_function(-5)
println(result) # Output: 5

result = my_function(5)
println(result) # Output: 25

# The bug is that the function does not handle NaN or Inf values correctly.
result = my_function(NaN)
println(result) #Output NaN - This is expected behavior
result = my_function(Inf)
println(result) #Output Inf - this is expected behavior

#To fix this, you can add explicit checks for NaN or Inf
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