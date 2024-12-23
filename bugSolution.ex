```elixir
list = [1, 2, 3, 4, 5]

# Use Task.async to perform each operation concurrently
tasks = Enum.map(list, fn x ->
  Task.async(fn ->
    if x == 3 do
      Process.sleep(1000) # Simulate a long-running operation
    end
    {x, :ok}  #Return the result of the operation
  end)
end)

# Gather the results of each task
results = Enum.map(tasks, fn task ->
  Task.await(task)  # Wait for each task to complete
end)

# Process results
Enum.each(results, fn {x, _} ->  #Only the value x matters in this case
 IO.puts(x)
end)
```