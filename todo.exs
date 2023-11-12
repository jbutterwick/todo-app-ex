defmodule Todo do
  defstruct done: false, description: ""

  def start do
    list = []

    case IO.read("TODO.md") do
      {:ok, binary} -> list = load_state(binary)
      {:error, reason} -> IO.puts("no todo file found...\n" <> "initializing new list...\n")
    end
  end

  def list_response(list, task) do
    IO.puts("#{Enum.join(task, "\n")}")
  end

  def list_output(list) do
    IO.puts("#{Enum.join(list, "\n")}")
  end

  def say_hi() do
    IO.puts("HELLO WORLD")
  end

  def flip(task) do
    task.status = !task.status
  end

  def list_response() do
    task = IO.puts("#{Enum.join(task, "\n")}")
  end

  def help_response() do
    IO.puts("Available commands:
    help    | h                                 Displays this help message
    list    | l                                 Display the todo list
    add     | a  <todo item description>        Adds the item to the todo list
    done    | d  <item index or description>    Marks the item as done
    flip    | f  <item index or description>    Flips the items done state
    save    | s                                 Saves the entire list to `TODO.md`
    quit    | q                                 Exit the program")
  end

  def load_state(data) do
    IO.puts("#{data}")
  end

  def handle(list) do
    case IO.gets("What do you need to do?   ") |> String.trim() |> String.split(" ") do
      ["help" | _] -> help_response()
      ["add" | task] -> list_response(task)
      ["flip" | task] -> list_response(task)
      ["done" | task] -> list_response(task)
      ["exit" | _] -> IO.puts("Goodbye!")
      ["save" | _] -> IO.puts("Saving State")
      ["list" | _] -> list_response()
    end
  end
end
