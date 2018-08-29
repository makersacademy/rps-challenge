require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it "chooses it's weapon at random" do
    allow(computer).to receive(:weapon) { 'rock' }
    expect(computer.weapon).to eq "rock"
  end
end
