def add(first_addend, second_addend)
	first_addend + second_addend
end

def subtract(first_subend, second_subend)
	first_subend - second_subend
end

def sum(addends)
	
	addends.inject(0) {|sum,x| sum + x }
	
end

def multiply(*numbers)

	numbers.inject(:*)

end

def power(number, exponent)

	number**exponent

end

def factorial(number)
	
	if number == 0
		1
	else
	(1..number).inject(:*)
	end

end
