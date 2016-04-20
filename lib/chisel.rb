class Chisel

  def read_file
    file = File.open("my_input.markdown", "r")
    text = file.read
    text.chomp
  end

  def convert_headers(markdown_input)
    character_array = markdown_input.chars
     if character_array[0..1] = '# '
       character_array[0] = "<h1>"
       character_array.push("</h1>")

     elsif character_array[0..2] = '## '
       character_array[0..1] = "<h2>"
       character_array.push("</h2>")
     end
     character_array.join
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
