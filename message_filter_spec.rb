require_relative 'message_filter'

describe MessageFilter do
  before do
    @filter = MessageFilter.new('foo')
  end
  it "NGワードの検査" do
    expect(@filter.detect?('hello from foo')).to be_truthy
  end
  it "NGワードがなかったら検査しない" do
    expect(@filter.detect?('hello from fao')).to be_falsey
  end
end