require_relative 'message_filter'

describe MessageFilter,"with argument 'foo'" do

  let(:filter){ MessageFilter.new('foo') }
  subject {filter}

  it "NGワードの検査" do
    is_expected.to be_detect('hello from foo')
  end
  it "NGワードがなかったら検査しない" do
    is_expected.not_to be_detect('hello from fao')
  end
end
describe MessageFilter,"with argument 'foo bar'" do

  let(:filter){ MessageFilter.new('foo','bar') }
  subject {filter}

  it "複数NGワードの検査" do
    is_expected.to be_detect('hello from foo')
  end
  it "複数NGワードがなかったら検査しない" do
    is_expected.not_to be_detect('hello from fao')
  end
end