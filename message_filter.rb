class MessageFilter
  attr_accessor :ng_words
  def initialize(*words)
    @ng_words = words
  end
  def detect?(text)
    @ng_words.any?{|w| text.include?(w)}
  end
end