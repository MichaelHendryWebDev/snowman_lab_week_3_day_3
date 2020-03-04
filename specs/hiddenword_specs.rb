require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative( '../game' )
require_relative( '../hiddenword' )
require_relative( '../player' )
class TestHiddenWord < MiniTest::Test

def setup()

  @hiddenword = HiddenWord.new("Caterpillar")
  @game = Game.new("Eugene", "Marshmallow", ["m", "t","i", "o", "e", "b"])

end

def test_hiddenword_is_word
  assert_equal("Caterpillar", @hiddenword.word)
end


def test_is_letter_correct
  result = @hiddenword.letter_correct(@game.guessed_letters, @game.hiddenword)
  assert_equal(true, result)
end

# def test_word_to_display__no_guesses
#   word_to_display(@hiddenword.word)
#   assert_equal("***********", @hiddenword.display)
# end

# def test_word_to_display__no_guesses
#   length = @hiddenword.word.length()
#   @hiddenword.word_to_display(length)
#   assert_equal("***********", @hiddenword.display)
# end


end