require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
   let(:player) { double :players }
   let(:choice) { (:rock) }
   let(:computer) { double :players }
   let(:rps) { {
    rock:     {scissors: :win,  paper: :loss, rock: :draw, spock: :win, lizard: :loss},
    paper:    {scissors: :loss, paper: :draw, rock: :win, spock: :loss, lizard: :loss},  
    scissors: {scissors: :draw, paper: :win,  rock: :loss, spock: :win, lizard: :win},
    spock:    {scissors: :win,  paper: :loss, rock: :win, spock: :draw, lizard: :win}, 
    lizard:   {scissors: :loss, paper: :win,  rock: :loss, sock: :loss, lizard: :draw}
    } }


  describe '#players' do
    scenario 'expect array to equal two players' do
      expect(game.player).to eq player
      expect(game.computer).to eq computer
    end
  end 

  describe '#choice' do
    scenario 'choice to return player choice' do
      allow(player).to receive(:choice) { :rock }
      expect(player.choice).to eq choice
    end
  end

  describe '#result' do
    scenario 'returns the result' do
      allow(player).to receive(:choice) { :rock }
      allow(computer).to receive(:choice) { :rock }
      expect(game.result).to eq :draw
    end
  end

  describe '#win' do
    scenario 'Outcome is a win' do
      allow(player).to receive_messages(:points => 5)
      expect(player.points).to eq(5)
    end
  end

  describe '#loss' do
    scenario 'Outcome is a loss' do
      allow(computer).to receive_messages(:points => 5)
      expect(computer.points).to eq(5)
    end
  end

  describe 'self_create' do
    scenario 'allows to create an instance of the game' do
      Game.create(player, computer)
      expect(Game.instance).to be_a Game
    end
  end
end