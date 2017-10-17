require 'game'

describe Game do

  let(:calc) { double('Calculator', compare: :win) }
  let(:player_1) { double('player', choose: nil, name: 'Ainsley') }
  let(:player_2) { double('player', choose: nil, name: 'testplayer') }
  let(:computer) { double('player', choose: nil, name: nil) }
  subject(:game) { Game.new('single', calc) }

  describe '#weapons' do

    it 'has a choice of weapons' do
      expect(game.weapons).to eq Game::WEAPONS
    end

  end

  describe '#play' do

    before do
      allow(player_1).to receive(:choice) { :rock }
      allow(computer).to receive(:choice) { :rock }
    end

    it 'creates a new computer_choice' do    
      expect(game).to receive(:computer_choice)
      game.play(player_1, computer)
    end
    it 'calculates the game result' do
      expect(calc).to receive(:compare)
      game.play(player_1, computer)
    end

  end

  describe '#result' do

    it 'returns the result' do
      allow(player_1).to receive(:choice) { :rock }
      allow(computer).to receive(:choice) { :scissors }
      game.play(player_1, computer)
      expect(game.result).to eq :win
    end

  end

end
