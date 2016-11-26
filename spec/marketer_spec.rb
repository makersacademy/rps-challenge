require 'marketer'

describe Marketer do
  subject(:marketer) {described_class.new("Tom")}

  it "should have a name" do
    expect(marketer.name).to eq "Tom"
  end
end
