class Preprocessor

  def initialize
    @text_file_object = File.open(ARGV[0], "r")
  end

  def k_arr
    @k_arr = @text_file_object.readlines.map do |line|
      clean(line)
    end
    @text_file_object.close
    return @k_arr
  end

  def clean(line)
    line.gsub!("\n", " ")
    line.gsub!(/(?<foo>[[:punct:]])/, ' \k<foo> ')
    line.gsub!("  ", " ")
    line.lstrip
  end

  def k_str
    k_arr.join
  end

  def create_clip
    name = "#{ARGV[0][0..-5]}_clipped.txt"
    clip_file = File.open("#{name}", "w")
    clip_file.write(k_str)
    clip_file.close
  end

end

preprocess = Preprocessor.new
preprocess.create_clip
