require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    split_array = self.split(/[.?!]/)
    split_array.each do |element|
      if element == ""
        split_array.delete(element)
      end
    end
    return split_array.length
  end
end