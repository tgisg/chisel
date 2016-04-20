gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class FileIoTest < Minitest::Test

  def test_chisel_reads_a_file
    assert_equal "This is the first line of the first paragraph.", @chisel.read_file
  end

end
