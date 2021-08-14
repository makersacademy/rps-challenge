require './lib/winner'

describe Winner do
  subject(:player_1_wins) { described_class.new('rock','scissors') }
  subject(:player_2_wins) { described_class.new('rock','paper') }
  subject(:draw) { described_class.new('rock','rock') }
  
  describe '#winner' do
    context 'rock v paper' do
    
      it 'paper wins' do
        expect(player_1_wins.winner).to eq "player_1"
      end

    end
  
    context 'rock v rock' do

      it 'is a draw' do
        expect(draw.winner).to eq "draw"
      end

    end
  
    context 'rock v scissors' do

      it 'rock wins' do
        expect(player_2_wins.winner).to eq "player_2"
      end

    end
  end

end