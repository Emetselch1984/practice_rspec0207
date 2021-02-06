require_relative 'message_filter'

describe MessageFilter,"with argument 'foo'" do
  before do
    @filter = MessageFilter.new('foo')
  end
  subject {@filter}
  it "NGワードの検査" do
    is_expected.to be_detect('hello from foo')
  end
  it "NGワードがなかったら検査しない" do
    is_expected.to be_detect('hello from fao')
  end
end