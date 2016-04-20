gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest < Minitest::Test

  # def test_can_convert_single_markdown_header_to_html_header
  #   chisel = Chisel.new
  #
  #   assert_equal('# hello', chisel.convert_headers('# hello'))
  # end

  # <h1>hello</h1>
  def test_can_convert_single_markdown_header_to_html_header_1
    chisel = Chisel.new
    result = chisel.convert_headers('# hello')
    assert_equal('<h1> hello</h1>', result)
  end

  def test_can_convert_double_markdown_header_to_html_header_2
    chisel = Chisel.new
    result = chisel.convert_headers('## hello')
    assert_equal('<h2> hello</h2>', result)
  end

end
