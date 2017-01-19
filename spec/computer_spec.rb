require 'computer'

describe Computer do
  subject(:computer) {described_class.new}
  it "should be able to choose a random weapon" do
    expect(computer).to receive(:select_weapon).and_return("Paper")
    computer.select_weapon 
  end
end
