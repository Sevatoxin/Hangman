class Game
  def initialize
    @word = get_random_word
  end

  def get_random_word
    words = File.readlines("words.txt")
    word_number = Random.rand(words.length)
    get_random_word if words[word_number].length < 5 || words[word_number].length > 12
    words[word_number]
  end
end