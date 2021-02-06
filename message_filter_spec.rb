require_relative 'message_filter'

describe MessageFilter do
  before do
    @filter = MessageFilter.new('foo')
  end
  it "NGワードの検査" do
    expect(@filter).to be_detect('hello from foo')
  end
  it "NGワードがなかったら検査しない" do
    expect(@filter).to be_detect('hello from fao')
  end
end