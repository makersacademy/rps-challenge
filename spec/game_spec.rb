require 'game'

describe Game do
  subject(:game) { described_class.new(player_name) }
  let(:player_name) { :player_name }
  let(:rock) { :rock }

  describe '#initialize' do
    
  end

  describe '#name' do
    it 'should display the player name' do
      allow(game).to receive(:name).and_return(player_name)
      expect(game.name).to eq(player_name)
    end
  end

  describe '#player_choice' do
    it 'should save the players choice to the instance variable choice' do
      expect(game.player_choice(rock)).to eq(rock)
    end
  end

  describe '#computer_choice' do
    it 'should save a random choice to comp_choice variable' do
      allow(game).to receive(:computer_choice).and_return("Rock")
      expect(game.computer_choice).to eq("Rock")
    end
  end

  describe '#rps' do
    it 'should generate a winner from player and computer choices' do
      game.rps("Rock", "Scissors")
      expect(game.winner).to eq(:player_name)
    end
  end

end
