defmodule Todo do
  def start do
    case IO.read("TODO.md") do
      {:ok, binary} -> IO.puts("todo file found\n" <> "loading state...\n" <> list_response())
      {:error, reason} -> IO.puts("no todo file found...\n" <> "initializing new list...\n")
    end
  end

  def list_response() do
    "LIST RESPONSE"
  end

  def load_state(data) do
    IO.puts("#{data}")
  end

  def handle() do
    case IO.gets("What do you need to do?   ") |> String.trim() |> String.split(" ") do
      ["help" | _] -> IO.puts("HELP MESSAGE")
      ["add" | task] -> IO.puts("#{task}" <> " " <> list_response())
      ["flip" | task] -> IO.puts("#{task}" <> " " <> list_response())
      ["done" | task] -> IO.puts("#{task}" <> " " <> list_response())
      ["exit" | _] -> IO.puts("Goodbye!")
      ["list" | _] -> IO.puts(list_response())
    end
  end
end
