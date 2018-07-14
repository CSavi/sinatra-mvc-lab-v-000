class PigLatinizer

  attr_reader :text

  def initialize
    @text = text 
  end   


  def piglatinize(text)
    #split words in an array
    words = text.split(" ")

    #iterate over words and add
    words_array = words.collect do |word|
      vowel_i = words.index('#{word.scan(/[AEIOUaeiou]).first}')
      sliced_words = word.slice!(0,vowel_i)

      puts '#{vowel_i}'
      word << "#{sliced_words} #{"w" if vowel_i == 0}ay"
      end
      new_phrase.join(" ")
   end 
end       
      
      if word.slice(0,1) =~ (/[AEIOUaeiou]/)
        word = word + "way"
      else
        word = word.slice(1,word.size) + word.slice(0,1)
        if  word.slice(0,1) =~ (/[aeiou]/)
          word = word + "ay"
        else
          word = word.slice(1,word.size) + word.slice(0,1)
          if word.slice(0,1) =~ (/[aeiou]/)
            word = word + "ay"
          else
            word = word.slice(1, word.size) + word.size(0,1) + "ay"
          end
        end
      end
    end
  new_phrase = word.join(" ")
 end
end
