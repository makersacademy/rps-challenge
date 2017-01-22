require 'game'

describe Game do
	
  subject(:game)		{described_class.new(player_1, player_2) }
  let(:player_1)   { double :player, name: "Player 1" }
  let(:player_2)   { double :player, name: "Player 2" }
  
  describe '#player_1' do
  	it 'returns player 1' do
  		expect(game.player_1).to eq player_1
  	end
  end

  describe '#player_2' do
  	it 'returns player 2' do
  		expect(game.player_2).to eq player_2
  	end
  end
  
  context 'player 1 wins' do
    before(:each) do
      allow(player_1).to receive(:choice).and_return(:Scissors)
      allow(player_2).to receive(:choice).and_return(:Paper)
    end    

    describe '#find_result' do
      it 'reports that player 1 has won the game' do
        expect(game.find_result).to eq "Scissors beats Paper - Player 1 wins!"      
      end
    end
  end

  context 'player 2 wins' do
    before(:each) do
      allow(player_1).to receive(:choice).and_return(:Paper)
      allow(player_2).to receive(:choice).and_return(:Scissors)
    end    

    describe '#find_result' do
      it 'reports that player 2 has won the game' do
        expect(game.find_result).to eq "Scissors beats Paper - Player 2 wins!"      
      end
    end
  end

  context 'the game ends in a draw' do
    before(:each) do
      allow(player_1).to receive(:choice).and_return(:Scissors)
      allow(player_2).to receive(:choice).and_return(:Scissors)
    end    

    describe '#find_result' do
      it 'reports that player 1 has won the game' do
        expect(game.find_result).to eq "Scissors matches Scissors - DRAW!"       
      end
    end
  end
   

  
  

end