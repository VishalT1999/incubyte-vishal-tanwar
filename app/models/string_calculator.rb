class StringCalculator < ApplicationRecord
	def self.add(numbers)
	  return 0 if numbers.empty?

	  num_list = numbers.scan(/-?\d+/)

	  total = 0
	  negatives = []
	  num_list.each do |num_str|
	    next if num_str.empty?  
	    num = num_str.to_i
	    if num < 0
	      negatives << num
	    else
	      total += num
	    end
	  end

	  if negatives.any?
	    raise "negative numbers not allowed #{negatives.join(',')}"
	  end

	  total
	end
end
