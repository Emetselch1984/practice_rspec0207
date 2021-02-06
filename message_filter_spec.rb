require_relative 'message_filter'

describe MessageFilter do
  it "NGワードの検査" do
    filter = MessageFilter.new('foo')
    expect(filter.detect?('hello from foo')).to be_truthy
  end
end