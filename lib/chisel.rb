require 'pry'
class Chisel
  attr_accessor :markdown_array

  def initialize(markdown_input) #markdown input must come in as one line only, so will need to parse chunks
    @markdown_array = markdown_input.chars
  end

  def read_file
    file = File.open("my_input.markdown", "r")
    text = file.read
    text.chomp
  end

  def convert_headers
    if markdown_array[0..1] == '# '.chars
      markdown_array.delete_at(1)
      markdown_array[0] = "<h1>"
      markdown_array.push("</h1>")

    elsif markdown_array[0..2] == '## '.chars
      markdown_array.delete_at(2)
      markdown_array[0..1] = "<h2>"
      markdown_array.push("</h2>")

    elsif markdown_array[0..3] == '### '.chars
      markdown_array.delete_at(3)
      markdown_array[0..2] = "<h3>"
      markdown_array.push("</h3>")

    elsif markdown_array[0..4] == '#### '.chars
      markdown_array.delete_at(4)
      markdown_array[0..3] = "<h4>"
      markdown_array.push("</h4>")

    elsif markdown_array[0..5] == '##### '.chars
      markdown_array.delete_at(5)
      markdown_array[0..4] = "<h5>"
      markdown_array.push("</h5>")

    elsif markdown_array[0] != '#'.chars
      # binding.pry
      markdown_array.unshift("<p>")
      markdown_array.push("</p>")
    end
    markdown_array.join

  end

  # markdown_input[0] = "<h1>"
  # markdown_input + "</h1>"
end
















# =>

#part one - finish the hash
#   def html_symbol
#     hash_of_symbols = {'#' => ["<h1>", "</h1>"],
#                       '##' => ["<h2>", "</h2>"],
#                      '###'
#       }
#     #has cat => <h1> has cat </h1>
#   end
#
#   #part 2
#   how to parse through word
#   # ["h", "a", "s", " ", "s", "t", "r", "i", "n", "g"]
#
#   #part 3 how to find first and last location in parsed word
#   # h, g
#
#   #part 4 how
#   # how do I get a html symbol to the front of h and the end of g
#    # h, g => <h1> has string </h1>
#   #how do I break down a word with #"has strings" to h1 html.
#
#   def html_converter
#   end
#
#
