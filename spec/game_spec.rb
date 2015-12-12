require 'game'

describe Game do

  subject(:rock_game)     { described_class.new('rock')     }
  subject(:paper_game)    { described_class.new('paper')    }
  subject(:scissors_game) { described_class.new('scissors') }

  it 'initializes with a choice' do
    expect(rock_game.player_choice).to eq 'rock'
  end

  describe '#valid_choice?' do
    it 'raises error if input is invalid' do
      allow(rock_game).to receive(:player_choice).and_return 'typo'
      expect { rock_game.valid_choice? }.to raise_error'Sorry mate- typo is not a valid choice!'
    end
  end

  describe 'stub computer choice to rock' do

    before do
      allow(Kernel).to receive(:rand).and_return(5)
    end

    describe '#computer_choice' do
      it 'returns either rock, paper, or scissors' do
        rock_game.set_computer_choice
        expect(rock_game.computer_choice).to eq 'rock'
      end
    end

    describe '#match?' do
      it 'returns true if computer_choice matches player_choice' do
        rock_game.set_computer_choice
        expect(rock_game.match?).to eq true
      end
    end
  end

    describe '#win?' do
      it 'returns true if player wins' do
        allow(Kernel).to receive(:rand).and_return(5)
        paper_game.set_computer_choice
        expect(paper_game.win?).to eq true
      end
    end



end
