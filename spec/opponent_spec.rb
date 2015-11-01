require 'opponent'

describe Opponent do
  subject(:opponent) {described_class.new}
  it "can choose a hand" do
  allow(opponent).to receive(:rand).with(3).and_return(0)
    expect(opponent.choose_hand).to eq :paper
  end
end