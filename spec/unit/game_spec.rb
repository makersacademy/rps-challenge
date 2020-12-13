require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer_weapon) { "scissors" }
  subject { described_class.new(player, computer_weapon) }

  it 'responds to result with 2 arguments' do
    expect(subject).to respond_to(:result).with(2).arguments
  end

  it 'returns win, if player has won' do
    allow(player).to receive(:chosen_weapon).and_return("rock")
    expect(subject.result(player.chosen_weapon, computer_weapon)).to eq "win"
  end

  it 'returns draw if player has drawn' do
    allow(player).to receive(:chosen_weapon).and_return("scissors")
    expect(subject.result(player.chosen_weapon, computer_weapon)).to eq "draw"
  end

  it 'returns lose if player has lost' do
    allow(player).to receive(:chosen_weapon).and_return("paper")
    expect(subject.result(player.chosen_weapon, computer_weapon)).to eq "lose"
  end
end
