class String
  define_method(:find_and_replace) do |find, replace|

  self.gsub(find, replace)
    # split_string = self.split(" ")
    # split_string.each() do |word|
    #   if(word.eql?(find))
    #     word.replace(replace)
    #   end
    # end

    #split_string.join(" ")

  end
end
