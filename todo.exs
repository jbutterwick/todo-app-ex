defmodule Todo do
  def run do
    case IO.gets("What do you need to do?   ") |> String.trim() do
      "help" -> IO.puts("HELP MESSAGE")
      "add" -> IO.puts("LIST RESPONSE")
      "flip" -> IO.puts("LIST RESPONSE")
      "done" -> IO.puts("LIST RESPONSE")
      "exit" -> IO.puts("Goodbye!")
      "list" -> IO.puts("LIST RESPONSE")
    end
  end
end
