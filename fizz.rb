require 'pry'

def fizz_buzz
	nums = (1..100).to_a
	nums.each do |n|
		if n % 2 == 0 
			puts "#{n}Fizz"
		elsif n % 3 == 0
			puts "#{n}Grams"
		else
			puts "#{n}Buzz"
		end
	end


end

fizz_buzz