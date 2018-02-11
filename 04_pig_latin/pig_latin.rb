def translate(sent)
  sent.downcase!
  vovels= %w(a e i o i y)
  words=sent.split.map do |word|
    i=0
    while not vovels.include? word[i,1]
        if word[i,2]=='qu'
          i+=2
        else
          i+=1
        end
    end

    word[i..-1]+word[0,i]+"ay"

  end
  words.join(" ")
end
