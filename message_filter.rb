class MessageFilter
  def initialize(*words)
    @words = words
  end
  def detect?(text)
    @words.each.any? do |w|
      text.include?(w)
    end
  end
end