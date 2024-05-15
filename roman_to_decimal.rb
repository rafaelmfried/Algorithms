# @param {String} s
# @return {Integer}
def roman_to_int(roman)
  roman_numerals = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000,
  }

  decimal_value = 0

  roman.each_char.with_index do |numeral, index|
    if (index + 1 < roman.length) && (roman_numerals[numeral] < roman_numerals[roman[index + 1]])
      decimal_value -= roman_numerals[numeral]
    else
      decimal_value += roman_numerals[numeral]
    end
  end
  decimal_value
end

puts roman_to_int('III')
puts roman_to_int('LVIII')
puts roman_to_int('MCMXCIV')

