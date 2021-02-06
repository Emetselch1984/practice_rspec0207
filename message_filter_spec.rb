require_relative 'message_filter'

shared_examples "MessageFilter with argument 'foo'" do
  it "NGワードの検査" do
    is_expected.to be_detect('hello from foo')
  end
  it "NGワードがなかったら検査しない" do
    is_expected.not_to be_detect('hello from fao')
  end
  it "引数が空である" do
    expect(subject.ng_words).not_to be_empty
  end
  it "nq_wordsは１つである" do
    expect(filter.ng_words.size).to be 1
  end
end
shared_examples "MessageFilter with argument 'foo','bar'" do
  it "複数NGワードの検査" do
    is_expected.to be_detect('hello from foo')
  end
  it "複数NGワードがなかったら検査しない" do
    is_expected.not_to be_detect('hello from fao')
  end
  it "引数が空である" do
    expect(subject.ng_words).not_to be_empty
  end
  it "nq_wordsは2つである" do
    expect(filter.ng_words.size).to be 2
  end
end

describe MessageFilter do
  context "with argument 'foo'" do
    let(:filter){ MessageFilter.new('foo') }
    subject {filter}
    it_behaves_like "MessageFilter with argument 'foo'"
  end
  context "with argument 'foo bar'" do
    let(:filter){ MessageFilter.new('foo','bar') }
    subject {filter}
    it_behaves_like "MessageFilter with argument 'foo','bar'"
  end
end