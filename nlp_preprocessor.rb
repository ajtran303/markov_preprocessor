class Preprocessor

  def initialize
    @text_file_object = File.open(ARGV[0], "r")
    @file_name = ARGV[0][0..-5]
  end

  private

  # It iterates over an array of each line in the file

  def k_arr
    k_arr = @text_file_object.readlines.map do |line|
      clean(line)
    end
    @text_file_object.close
    return k_arr
  end

  # It replaces all /n with a single space
  # It pads all punctuation marks with single spaces
  # It replaces all double spaces with a single space
  # It strips leading whitespace

  def clean(line)
    line.gsub!("\n", " ")
    line.gsub!(/(?<foo>[[:punct:]])/, ' \k<foo> ')
    2.times { line.gsub!("  ", " ") }
    line.lstrip
  end

  def token_arr
    k_arr.join.split(" ")
  end

  public

  # It writes the token array into a new file

  def create_clip
    clip_file = File.open("#{@file_name}_clipped.txt", "w")
    clip_file.write(token_arr)
    clip_file.close
  end

end

preprocess = Preprocessor.new
preprocess.create_clip
