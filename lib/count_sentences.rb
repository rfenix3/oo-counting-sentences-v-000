require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    temp_array = []
    final_array = []
    if self.include?(".") || self.include?("?") || self.include?("!")
      temp_array = self.split(/\.|\?|\!/)
      temp_array = temp_array.each {|element|
        if element.size > 0 
          final_array.push(element)
        end
        }
      return final_array.size
    else
      return 0 
    end
  end
end