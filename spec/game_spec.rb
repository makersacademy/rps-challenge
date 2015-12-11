require 'game'

describe Game do

  subject(:game) { Game.new('rock') }

  it 'initializes with a choice' do
    expect(game.player_choice).to eq 'rock'
  end

  describe '#computer_choice' do
    it 'returns either rock, paper, or scissors' do
      allow(Kernel).to receive(:rand).and_return(5)
      game.set_computer_choice
      expect(game.computer_choice).to eq 'rock'
    end
  end

  describe '#match?' do
    it 'returns true if computer_choice matches player_choice' do
      allow(Kernel).to receive(:rand).and_return(5)
      game.set_computer_choice
      expect(game.match?).to eq true
    end
  end


end
