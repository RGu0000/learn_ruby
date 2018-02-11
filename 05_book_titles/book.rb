class Book
  attr_accessor :title

  def title=(title)
    words=%w(of over and in the a an)
    @title=title.capitalize.gsub(/(\w+)/) {|found| words.include?(found)? found : found.capitalize}
    end

end
