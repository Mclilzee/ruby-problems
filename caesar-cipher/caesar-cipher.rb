require 'pry-byebug'

def cipher(string, shift)
    # a-z between 97 & 122
    # A-Z between 65 & 90
    ciphered_string = ""

    string.split("").each do |char|
        new_ord = char.ord + shift

        if char.ord >= 97 && char.ord <= 122
            ciphered_string += cipher_bound(new_ord, 97, 122)
        elsif char.ord >= 65 && char.ord <= 90
            ciphered_string += cipher_bound(new_ord, 65, 90)
        else
            ciphered_string += char
        end
    end
    p ciphered_string
end

def cipher_bound(char_ord, lower, upper)
    until char_ord >= lower && char_ord <= upper
        if char_ord < lower
            char_ord += 26
        else
            char_ord -= 26
        end
    end
    char_ord.chr
end

cipher("QEB NRFZH., ! ?  YOLTK CLU GRJMP LSBO QEB IXWV ALD", -23)