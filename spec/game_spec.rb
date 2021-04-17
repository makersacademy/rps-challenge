require 'game'

describe Game do
  let(:player)        { double :player, name: 'muhammad', player_weapon: 'rock' }
  let(:computer)      { double :computer, name: 'computer', computer_weapon: 'paper' }
  let(:subject)       { described_class.new(player) }

  it { is_expected.to be_an_instance_of described_class }

  it 'creates a new instance with player name' do
    expect(subject.player.name).to eq('muhammad')
  end

  describe '#winner' do

    it { is_expected.to respond_to(:winner).with(2).arguments }

    it 'gives us a winner of the game' do
      expect(subject.winner('scissors', 'paper')).to eq  "computer wins, you lose"
      expect(subject.winner('rock', 'scissors')).to eq  "computer wins, you lose"
      expect(subject.winner('paper', 'rock')).to eq  "computer wins, you lose"
      expect(subject.winner('rock', 'rock')).to eq "It's a draw"
    end
  end
end
