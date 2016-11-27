require 'computer'

describe Computer do
  subject(:computer) {described_class.new}
  it "should be able to choose a random weapon" do
    expect(computer).to receive(:choice).and_return(:paper)
    computer.choice
  end
end
