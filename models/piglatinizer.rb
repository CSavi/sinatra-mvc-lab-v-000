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
