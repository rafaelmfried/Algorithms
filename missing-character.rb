class PangramChecker
    def self.find_missing_characters(sentence)
      alphabet = ('a'..'z').to_a
  
      letters = sentence.downcase.scan(/[a-z]/)
  
      letters_set = letters.uniq
  
      missing_characters = alphabet - letters_set
  
      missing_characters.sort!
    end
end

sentence = "welcome to geeksforgeeks"
#Output : "abdhijnpquvxyz"
sentence2 = "The quick brown fox jumps"
#Output : "adglvyz"
missing_characters = PangramChecker.find_missing_characters(sentence2)
puts "Missing characters to make the sentence a Pangram: #{missing_characters.join(', ')}"
  