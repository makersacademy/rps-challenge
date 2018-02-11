require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double('player') }

  context 'when instantiated' do
    it 'takes a parameter and passes it to the @player attribute' do
      expect(game.player).to eq player
    end
  end

  describe 'self#create' do
    it 'instantiates a singleton' do
      described_class.create(player)
      expect(described_class.instance).to be_an_instance_of described_class
    end
  end

  describe '#pc_weapon' do
    it 'returns rock, paper, or scissors' do
      expect(game.pc_weapon).to satisfy { |weapon| 'rock' || 'paper' || 'scissors'}
    end
  end

  # Game has already chosen weapon when initialized - so srands before
  # 'game' fixes the weapon for each test

  describe '#player_win?' do
    context 'when player chooses rock' do
      it 'returns true when pc chooses scissors' do
        srand(3) #fixes randomly chosen weapon to scissors
        game.set_player_weapon('rock')
        expect(game.player_win?).to eq true
      end
      it 'returns false when pc chooses paper' do
        srand(1) #fixes randomly chosen weapon to paper
        game.set_player_weapon('rock')
        expect(game.player_win?).to eq false
      end
      it 'returns nil when pc chooses rock' do
        srand(33) #fixes randomly chosen weapon to rock
        game.set_player_weapon('rock')
        expect(game.player_win?).to eq nil
      end
    end

    context 'when player chooses paper' do
      it 'returns true when pc chooses rock' do
        srand(33) #fixes randomly chosen weapon to rock
        game.set_player_weapon('paper')
        expect(game.player_win?).to eq true
      end
      it 'returns false when pc chooses scissors' do
        srand(3) #fixes randomly chosen weapon to scissors
        game.set_player_weapon('paper')
        expect(game.player_win?).to eq false
      end
      it 'returns nil when pc chooses paper' do
        srand(1) #fixes randomly chosen weapon to paper
        game.set_player_weapon('paper')
        expect(game.player_win?).to eq nil
      end
    end

    context 'when player chooses scissors' do
      it 'returns true when pc chooses paper' do
        srand(1) #fixes randomly chosen weapon to paper
        game.set_player_weapon('scissors')
        expect(game.player_win?).to eq true
      end
      it 'returns false when pc chooses rock' do
        srand(33) #fixes randomly chosen weapon to rock
        game.set_player_weapon('scissors')
        expect(game.player_win?).to eq false
      end
      it 'returns nil when pc chooses scissors' do
        srand(3) #fixes randomly chosen weapon to scissors
        game.set_player_weapon('scissors')
        expect(game.player_win?).to eq nil
      end
    end
  end
end
