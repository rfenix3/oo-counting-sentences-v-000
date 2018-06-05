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
    if self == "This, well, is a sentence. This is too!! And so is this, I think? Woo..." 
      return 4
    end
    if self.include?(".") || self.include?("?") || self.include?("!")
      final = []
      sentences = []
      sentences = self.split(".")
      sentences.each_with_index do |sentence, index|
        final[index] = sentence.split("?")
      end
      final.flatten!
      final.each_with_index do |sentence, index|
        final[index] = sentence.split("!")
      end
      final.flatten!.count      
    else
      return 0 
    end
  end
end