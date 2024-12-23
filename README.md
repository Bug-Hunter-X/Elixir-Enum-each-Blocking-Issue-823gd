# Elixir Enum.each Blocking Issue

This example demonstrates a potential blocking issue when using `Enum.each` in Elixir with a long-running operation within the loop.  If the operation inside the `Enum.each` takes a significant amount of time, it can lead to unexpected delays or even apparent hangs in the application.

The solution involves using a different approach, such as `Enum.map` and `Task.async`, to allow for concurrency and avoid blocking the main thread.

## Bug
The `bug.ex` file shows a simple `Enum.each` loop where a sleep operation simulates a time-consuming task. This can cause the entire loop to appear stalled.