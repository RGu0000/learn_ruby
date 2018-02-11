def echo(text)
  text
end

def shout(text)
  text.upcase
end

def repeat(text,times=2)
  result=text
  (times-1).times do |str|
    result+=" "+text
  end
  result
end

def start_of_word(text,number)
  text[0, number]
end

def first_word(text)
  text.split.first
end

def titleize(text)
  words=%w(end over and the)
  text.capitalize.gsub(/(\w+)/) {|found| words.include?(found)? found : found.capitalize}
end
