require_relative '../game.rb'

describe Game do
  subject(:game) {described_class.new("Ben") }
  

    it 'should store a player name' do
      expect(game.name).to eq("Ben")
    end
    
    describe '#user_choice' do
      it 'stores the user choice' do
        expect(game.user_choice("Rock")).to eq("Rock")
      end
    end

    describe '#response' do
      it 'generates a random response to user choice' do
        game.user_choice("Rock")
        expect(game.response).to include("Rock", "Paper", "Scissors")  
      end
    end

end