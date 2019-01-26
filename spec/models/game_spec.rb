require './app/models/game'

describe Game do
  let(:subject) {Game.new('player', 'computer')}

  describe '#defaults' do
    it "initializes with two players" do
      game = Game.new('one','two')
      expect(game.player_one.name).to eq 'one'
    end

    it 'initializes with a new round' do
      expect(subject.round).to eq []
    end
  end

  describe '#player_one_turn' do
    it "puts a value into the 'round'" do
      subject.player_one_turn(2)
      expect(subject.round).to_not be_empty
    end
  end

  describe '#translate' do
    it 'returns a string based on the numerical value' do
      expect(subject.translate(1)).to eq 'rock'
    end
  end

  describe '#reset' do
    it 'resets the round back to an empty array' do
      subject.player_one_turn(1)
      subject.reset
      expect(subject.round).to eq []
    end
  end

  describe '#computer_turn' do
    it "puts a number between 1 and 3 in the 'round'" do
      subject.player_one_turn(1)
      subject.computer_turn
      expect(subject.round[1]).to be_between(1, 3).inclusive
    end
  end

  describe '#result' do
    it 'returns the result if the player wins' do
      srand 876
      subject.player_one_turn(1)
      subject.computer_turn
      expect(subject.result).to eq 'YOU WIN!'
    end
    it 'returns the result if the player loses' do
      srand 876
      subject.player_one_turn(2)
      subject.computer_turn
      expect(subject.result).to eq 'YOU LOSE!'
    end
  end

end
