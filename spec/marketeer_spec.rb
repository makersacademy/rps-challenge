require 'marketeer'

describe Marketeer do
  subject(:marketeer) {described_class.new("Tom")}

  it "should have a name" do
    expect(marketeer.name).to eq "Tom"
  end
end
