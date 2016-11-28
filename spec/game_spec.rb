require 'game.rb'

describe Game do

  let(:game) { described_class.new }

  it "should output rock if random number = 1" do
    allow(game).to receive(:random_number).and_return(1)
    expect(game.computer_attack_type).to eq('Rock')
  end

  it "should output paper if random number = 2" do
    allow(game).to receive(:random_number).and_return(2)
    expect(game.computer_attack_type).to eq('Paper')
  end

  it "should output scissors if random number = 3" do
    allow(game).to receive(:random_number).and_return(3)
    expect(game.computer_attack_type).to eq('Scissors')
  end
end
