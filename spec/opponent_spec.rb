require 'opponent'

describe Opponent do
  subject(:opponent) {described_class.new}
  it "can choose a hand" do
    expect(opponent.choose_hand).to eq :paper
  end
end