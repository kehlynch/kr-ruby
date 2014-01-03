
class Fixnum
	def to_roman
		conversion = {
			1 => 'I',
			4 => 'IV',
			5 => 'V',
			9 => 'IX',
			10 => 'X',
			40 => 'XL',
			50 => 'L',
			90 => 'XC',
			100 => 'C',
			400 => 'CD',
			500 => 'D',
			900 => 'CM',
			1000 => 'M'}

		intervals = conversion.keys.sort.reverse
		roman = ""
		current = self
		while intervals.length > 0
			if current - intervals[0] >= 0
				roman = roman + conversion[intervals[0]]
				current = current -intervals[0]
			else
				intervals.shift
			end
		end

		return roman
	end
end
