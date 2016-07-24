require 'game'

describe Game do

 let(:player_1) { double(:player_1) }
 let(:weapon1) { :Rock }
 let(:weapon2) { :Paper }
# let(:comp) { double(:comp) }
# let(:draw) { double(:draw) }
# let(:computer) { Computer.new }
# subject { described_class.new(player_1) }

  describe '#self.create' do
     it "creates a new instance of game" do
       game = Game.create(player_1)
       expect(Game.instance).to eq game
     end
   end

  describe '#wins?' do
    it 'returns true as player_1 is the winner' do

    expect(subject.who_wins?).to eq true
    end
    it 'returns true as player_1 is the loser' do
    expect(subject.who_wins?).to eq false
    end
  end

  describe '#draws?' do
    it 'returns a draw' do
    expect(subject.draw?).to eq true
    end

  end

  describe '#game_outcome' do
    context 'It\'s a draw' do
    it 'returns a message that it\'s a tie' do
    expect(subject.game_outcome).to eq "It's a tie"
    end
    
    context 'player 1 wins' do
    it 'returns a message that player 1 has won' do
    expect(subject.game_outcome).to eq "You win!!"
    end
  end

    context 'player 1 loses' do
    it 'returns a message that player 1 has lost' do
    expect(subject.game_outcome).to eq "You lose!!"
  end
  end


end

end

end
