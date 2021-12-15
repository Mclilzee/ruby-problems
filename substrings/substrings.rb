require "pry-byebug"

def substrings(words, substring_array)

    result = Hash.new
    words.split(" ").each do |word|
        substring_array.each do |string| 
            if word.upcase.include?(string.upcase)
                if result[string]
                    result[string] += 1
                else
                    result[string] = 1
                end
            end

        end
    end
    p result
end

dictionary = ["down","go","going","horn", "below","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)