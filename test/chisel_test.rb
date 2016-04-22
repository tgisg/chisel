gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'
require 'pry'

class ChiselTest < Minitest::Test

  # def test_can_convert_single_markdown_header_to_html_header
  #   chisel = Chisel.new
  #
  #   assert_equal('# hello'.convert_headers('# hello'))
  # end

  # <h1>hello</h1>
  def test_can_split_string_into_array
    chisel = Chisel.new("# hello")
    assert_equal(['#', ' ', 'h', 'e', 'l', 'l', 'o'], chisel.markdown_array)
  end

  def test_can_convert_one_markdown_header_to_html_header_1
    chisel = Chisel.new('# hello')
    assert_equal('<h1>hello</h1>', chisel.convert_headers)
  end

  def test_can_convert_two_markdown_header_to_html_header_2
    chisel = Chisel.new('## hello')
    assert_equal('<h2>hello</h2>', chisel.convert_headers)
  end

  def test_can_convert_three_markdown_header_to_html_header_3
    chisel = Chisel.new('### hello')
    assert_equal('<h3>hello</h3>', chisel.convert_headers)
  end

  def test_can_convert_four_markdown_header_to_html_header_4
    chisel = Chisel.new('#### hello')
    assert_equal('<h4>hello</h4>', chisel.convert_headers)
  end

  def test_can_convert_five_markdown_header_to_html_header_5
    chisel = Chisel.new('##### hello')
    assert_equal('<h5>hello</h5>', chisel.convert_headers)
  end

  def test_can_convert_no_markdown_header_to_html_para
    chisel = Chisel.new("hello")
    assert_equal('<p>hello</p>', chisel.convert_headers)
  end

  def test_can_convert_markdown_single_asterisk_to_html_em
    chisel = Chisel.new("*hello*")
    assert_equal('<em>hello</em>', chisel.convert_emphases)
  end
end
