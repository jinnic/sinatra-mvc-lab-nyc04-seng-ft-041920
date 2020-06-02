class PigLatinizer
    attr_reader :text
    
    def convert
    # if words that begin with vowel sounds, add "way" 
    # else consonant sound split and send back +"yay"
        words = text.split(" ")
        words.count
        convert =  words.map do |word|
            v_index = word.index(/[aeiou]/)
            if v_index == 0
                word+"way"
            else
                before_vowel = word.slice(0...v_index)
                after_vowel = word.slice(v_index..-1)
                after_vowel + before_vowel +"ay"
            end
        end
        convert.join(" ")
    end

    # def initialize(user_text)
    #     @text = user_text
    # end

    def piglatinize(user_text)
        @text = user_text
        words = text.split(" ")
        words.count
        convert =  words.map do |word|
            v_index = word.index(/[aAeEiIoOuU]/)
            if v_index == 0
                word+"way"
            else
                before_vowel = word.slice(0...v_index)
                after_vowel = word.slice(v_index..-1)
                after_vowel + before_vowel +"ay"
            end
        end
        convert.join(" ")
    end

end