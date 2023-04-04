defmodule Todo do
  def run do
    case IO.gets("What do you need to do?   ") |> String.trim() |> String.split(" ") do
      ["help" | _] -> IO.puts("HELP MESSAGE")
      ["add" | task] -> IO.puts("#{task}" <> " " <> "LIST RESPONSE")
      ["flip" | task] -> IO.puts("#{task}" <> " " <> "LIST RESPONSE")
      ["done" | task] -> IO.puts("#{task}" <> " " <> "LIST RESPONSE")
      ["exit" | _] -> IO.puts("Goodbye!")
      ["list" | _] -> IO.puts("LIST RESPONSE")
    end
  end
end
