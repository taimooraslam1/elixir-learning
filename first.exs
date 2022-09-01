# Data Types
# integer          1
# integer          0x1F
# float            1.0
# boolean          true / false
# atom / symbol    :atom
# string           "Hello world"
# list             ["a", "b", "c", "d"]
# tuple            {1, 2, 3}

# Basic arithmetic operations
# plus = 2 + 2
# IO.puts(plus)

# divide = 4 / 2
# IO.puts(divide)

# score = 2 / 5 * 100
# IO.puts(score)

# ---------- String ----------

# iex(1)> x = "A really long and complex sentence we'd rather not repeat."
# "A really long and complex sentence we'd rather not repeat."
# iex(2)> x
# "A really long and complex sentence we'd rather not repeat."
# iex(3)>  x = "Hellooooo"
# "Hellooooo"
# iex(4)> x
# "Hellooooo"
# iex(5)>

# iex(4)> String.reverse("Joy of Elixir")
# "rixilE fo yoJ"

# iex(5)> String.split("Joy of Elixir")
# ["Joy", "of", "Elixir"]

# iex(6)> String.replace("Joy of Elixir", "Elixir", "Javascript")
# "Joy of Javascript"

# iex(7)> String.downcase("Joy of Elixir")
# "joy of elixir"
# iex(8)> String.upcase("joy of elixir")
# "JOY OF ELIXIR"

# iex(11)> "hello" <> " " <> "world"
# "hello world"
# iex(12)> String.length("Hello")
# 5

# ---------- List -----------

# iex(13)> shopping_list = ["fish", "ham", "eggs", "bread"]
# iex(14)> [head | tail] = shopping_list
# ["fish", "ham", "eggs", "bread"]
# iex(15)> head
# "fish"
# iex(16)> tail
# ["ham", "eggs", "bread"]

# iex(17)> [1, 2, 3] ++ [4, 5, 6]
# [1, 2, 3, 4, 5, 6]

# iex(18)> [1, true, 2, false, 3, true] -- [true, false]
# [1, 2, 3, true]

# iex(19)> new = 0
# 0
# iex(20)> list = [1, 2, 3]
# [1, 2, 3]
# iex(21)> [new | list]
# [0, 1, 2, 3]

# iex(2)> animals = ["cat", "dog", "cow", "turducken"]
# ["cat", "dog", "cow", "turducken"]
# iex(3)> Enum.reverse(animals)
# ["turducken", "cow", "dog", "cat"]

# ---------- Map ----------

# iex(22)> person = %{"name" => "Roberto", "age" => 56, "gender" => "Male"}
# %{"age" => 56, "gender" => "Male", "name" => "Roberto"}
# iex(23)> person_name = person["name"]
# "Roberto"

# iex(24)> person_two = %{ name: "Jhon", age: 56, gender: "Male"}
# %{age: 56, gender: "Male", name: "Jhon"}
# iex(25)> person_two[name]
# ** (CompileError) iex:25: undefined function name/0 (there is no such import)
# iex(25)> person_two.name
# "Jhon"
# iex(26)> person_two[:name]
# "Jhon"

# ---------- Function ----------

# iex(6)> greeting = fn (name) -> "Hello, #{name}!" end
# #Function<44.65746770/1 in :erl_eval.expr/5>
# iex(7)> greeting.("Taimoor")
# "Hello, Taimoor!"

# with capture operator
# iex(27)> captured_greeting = &("Hello, #{&1}! I see you're #{&2} and you're #{&3} years old.")
# #Function<42.65746770/3 in :erl_eval.expr/5>
# iex(28)> captured_greeting.("Izzy", "Female", "30ish")
# "Hello, Izzy! I see you're Female and you're 30ish years old."

# iex(2)> get_celsius = fn(fahrenheit) -> ((fahrenheit - 32) * 5) / 9 end
# #Function<44.65746770/1 in :erl_eval.expr/5>
# iex(3)> get_celsius.(98.6)
# 37.0

# iex(7)> get_seconds = fn (days) -> 60 * 60 * 24 * days end
# #Function<44.65746770/1 in :erl_eval.expr/5>
# iex(8)> get_seconds.(1)
# 86400
# iex(9)> get_seconds.(2)
# 172800

# iex(12)> get_age_average = fn (%{age: age1}, %{age: age2}) -> (age1 + age2) / 2 end
# #Function<43.65746770/2 in :erl_eval.expr/5>
# iex(13)> get_age_average.(%{age: 15},%{age: 45})
# 30.0

# --------- pattern matching ----------

# iex(15)> new_list = [%{age: "30ish", gender: "Female", name: "Izzy"},%{age: "30ish", gender: "Male", name: "The Author"},%{age: "56", gender: "Male", name: "Roberto"},%{age: "38", gender: "Female", name: "Juliet"},%{age: "21", gender: "Female", name: "Mary"},%{age: "67", gender: "Female", name: "Bobalina"}]
# [
#   %{age: "30ish", gender: "Female", name: "Izzy"},
#   %{age: "30ish", gender: "Male", name: "The Author"},
#   %{age: "56", gender: "Male", name: "Roberto"},
#   %{age: "38", gender: "Female", name: "Juliet"},
#   %{age: "21", gender: "Female", name: "Mary"},
#   %{age: "67", gender: "Female", name: "Bobalina"}
# ]
# iex(16)> [first, second | other] = new_list
# [
#   %{age: "30ish", gender: "Female", name: "Izzy"},
#   %{age: "30ish", gender: "Male", name: "The Author"},
#   %{age: "56", gender: "Male", name: "Roberto"},
#   %{age: "38", gender: "Female", name: "Juliet"},
#   %{age: "21", gender: "Female", name: "Mary"},
#   %{age: "67", gender: "Female", name: "Bobalina"}
# ]
# iex(17)> first
# %{age: "30ish", gender: "Female", name: "Izzy"}
# iex(18)> %{age: age, name: name} = first
# %{age: "30ish", gender: "Female", name: "Izzy"}
# iex(19)> age
# "30ish"
# iex(20)> name
# "Izzy"

# iex(24)> greeting = fn
# ...(24)>   %{name: name} -> "Hello, #{name}!"
# ...(24)>   %{} -> "Hello, Anonymous Stranger!"
# ...(24)> end
# #Function<44.65746770/1 in :erl_eval.expr/5>
# iex(25)> greeting.(%{name: "Taimoor"})
# "Hello, Taimoor!"

# iex(1)> about = fn
# ...(1)> %{name: name, age: age} -> "#{name} is #{age} years old"
# ...(1)> %{name: name} -> "age is not provided by #{name}"
# ...(1)> end
# #Function<44.65746770/1 in :erl_eval.expr/5>
# iex(2)> about.(%{name: "Taimoor"})
# "age is not provided by Taimoor"


# name = IO.gets "What is your name? "
# age = IO.gets "And what is your age? "
# IO.puts "Hello, #{String.trim(name)}! You're #{String.trim(age)}? That's so old!"

# get_text = &("#{&1} is going to #{&2} in #{&3}")
# name = String.trim(IO.gets "What is your name? ")
# place = String.trim(IO.gets "Where are you going? ")
# vehicle = String.trim(IO.gets "What is your vehicle? ")
# IO.puts get_text.(name, place, vehicle)

# ----------- Enum -----------

# iex(1)> cities = ["vienna", "melbourne", "osaka", "calgary", "sydney"]
# ["vienna", "melbourne", "osaka", "calgary", "sydney"]
# iex(2)> Enum.each(cities, &IO.puts/1)
# vienna
# melbourne
# osaka
# calgary
# sydney
# :ok
# iex(3)> Enum.each(cities, &String.capitalize/1)
# :ok
# iex(4)> Enum.each(cities, &IO.puts/1)
# vienna
# melbourne
# osaka
# calgary
# sydney
# :ok
# iex(5)> Enum.map(cities, &String.capitalize/1)
# ["Vienna", "Melbourne", "Osaka", "Calgary", "Sydney"]
# iex(6)>

# ------- pipe operator ---------

# "hello pipe operator" |> String.upcase() |> String.reverse()
# "ROTAREPO EPIP OLLEH"

# iex(9)> ["Vienna", "Melbourne", "Osaka", "Calgary", "Sydney"] |> Enum.each(&IO.puts/1)
# Vienna
# Melbourne
# Osaka
# Calgary
# Sydney

# ------ File -------

# iex(1)> File.write("new_text.txt", "New file with content for testing purpose")
# :ok
# iex(2)> File.read("new_text.text")
# {:error, :enoent}
# iex(3)> File.read("new_text.txt")
# {:ok, "New file with content for testing purpose"}

# iex(4)> {:ok, contents} = File.read("new_text.txt")
# {:ok, "New file with content for testing purpose"}
# iex(5)> contents
# "New file with content for testing purpose"
# iex(6)> contents |> String.split(" ")
# ["New", "file", "with", "content", "for", "testing", "purpose"]
# iex(7)> contents |> String.split(" ") |> Enum.map(&String.reverse/1)
# ["weN", "elif", "htiw", "tnetnoc", "rof", "gnitset", "esoprup"]

# iex(8)> new_content = contents |> String.split(" ") |> Enum.map(&String.reverse/1)
# ["weN", "elif", "htiw", "tnetnoc", "rof", "gnitset", "esoprup"]
# iex(9)> File.write("new_text.txt", new_content)
# :ok
