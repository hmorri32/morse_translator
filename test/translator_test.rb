require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test

  def setup
    @translator = Translator.new
  end
  
  def test
    assert true
  end

  def test_translator
    assert_instance_of Translator, @translator
  end
  
  def test_eng_morse 
    assert_equal '-.-. --- --- .-..  --. ..- -.--', @translator.eng_morse('cool guy')
  end

  def test_eng_morse_num 
    assert_equal ".---- ..--- ...-- ....-", @translator.eng_morse('1234')
  end

  def test_morse_english
    assert_equal 'SUH DUDE', @translator.morse_eng('... ..- ....   -.. ..- -.. .')
  end

end