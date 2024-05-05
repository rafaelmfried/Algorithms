class CountCharacter
    def self.count_character(string)
        uppercase_count, lowercase_count, special_count, numeric_count = 0, 0, 0, 0
        string.each_char do |char|
            case char
            # Regex to uppercase
            when /[A-Z]/
                uppercase_count += 1
            # Regex to lowercase
            when /[a-z]/
                lowercase_count += 1
                # Regex to numeric
            when /[0-9]/
                numeric_count += 1
            # Regex to not uppercase, lowercase or numeric
            when /[^A-Za-z0-9]/
                special_count += 1
            end
        end

        return {
            uppercase: uppercase_count,
            lowercase: lowercase_count,
            numeric: numeric_count,
            special: special_count
        }
    end
end

string = "#GeeKs01fOr@gEEks07"
#Output : 
#Upper case letters : 5
#Lower case letters : 8
#Numbers : 4
#Special Characters : 2

string2 = "*GeEkS4GeEkS*"
#Output :
#Upper case letters : 6
#Lower case letters : 4
#Numbers : 1
#Special Characters : 2

CountCharacter.count_character(string).each do |category, count|
    puts "#{category.capitalize} character count: #{count}"
end
