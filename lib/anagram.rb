class Anagram
    attr_accessor :word, :reverse_array

    def initialize(word)
        self.word = word.downcase
        self.reverse_array = self.word.reverse.split("").sort
    end

    def match(words_array)
        result = []
        words_array.each do |candidate|
            if candidate.split("").sort == self.reverse_array
                result << candidate
            end
        end
        return result
    end
end


