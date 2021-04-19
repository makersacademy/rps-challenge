require 'game'

describe Game do
  let(:player)        { double :player, name: 'Tiago', player_move: 'Rock' }
  let(:computer)      { double :computer, name: 'computer', computer_weapon: 'paper' }
  let(:subject)       { described_class.new(player) }

  it { is_expected.to be_an_instance_of described_class }

  it 'creates a new instance with player name' do
    expect(subject.player.name).to eq('Tiago')
  end

  describe '#winner' do

    it { is_expected.to respond_to(:winner).with(2).arguments }

    it 'gives us a winner of the game' do
      expect(subject.winner('Scissors', 'Paper')).to eq  "you win!"
      expect(subject.winner('Rock', 'Scissors')).to eq  "you win!"
      expect(subject.winner('Paper', 'Rock')).to eq  "you win!"
      expect(subject.winner('Rock', 'Rock')).to eq "It's a draw"
    end
  end
end