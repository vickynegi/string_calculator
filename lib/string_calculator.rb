# frozen_string_literal: true

## created class
class StringCalculator
	## calculating sum
	def add(str)
		return 0 if str.empty?

		if str.start_with?("//")
			arr = str.gsub("\n", "").split(str[2]).map(&:to_i)
		else
			arr = str.gsub("\n", ",").split(",").map(&:to_i)
		end

		unless arr.select(&:negative?).empty?
			raise "negative numbers not allowed #{arr.select(&:negative?) * ','}"
		else
			return arr.sum
		end
	end
end
