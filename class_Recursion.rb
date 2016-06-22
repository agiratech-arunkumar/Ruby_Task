class Recursion
  def sum_of_digits(n)
    if n <= 0
        return 0
    else
        puts n
        n + sum_of_digits(n-1)
    end
  end
end

print "Enter the number for the sum of digits : "
number = gets.to_i
sum_of_digits_obj = Recursion.new
puts sum_of_digits_obj.sum_of_digits(number)

# sum_of_digits_obj = Recursion.new.sum_of_digits(number)
# puts sum_of_digits_obj
