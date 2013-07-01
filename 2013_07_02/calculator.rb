@num1 = "0"
@num2 = ""
@func = ""
@answer = ""

def display
  puts ">>> #{@num1} #{@func} #{@num2} #{@answer} <<<"
end

def function
  puts "Type a number to choose a function:"
  puts "1.....Add"
  puts "2.....Subtract"
  puts "3.....Multiply"
  puts "4.....Divide"
  function_input = gets.chomp
  if @functions.has_key?(function_input)
    @func = @functions[function_input]
  else
    puts "Please enter a valid number."
    puts
    function
  end
end

@functions = {"1" => "+", "2" => "-", "3" => "*", "4" => "/"}

puts "Enter a number:"
@num1 = gets.chomp
puts
display
function
puts
display
puts "Enter another number:"
@num2 = gets.chomp
puts
@answer = "= #{(@num1.to_f.send(@func.to_sym, @num2.to_f))}"
display