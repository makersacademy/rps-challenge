require 'game'

describe Game do
    
    subject(:game)  { described_class.new }
    
    let(:player_1)  { double :player, choice: :rock }
    let(:computer)  { double :computer, choice: :scissors }
    
    describe "class methods" do
        context "a player has been added" do
            let(:id) { 1 }
            
            before do
                Game.add_player(id, player_1)
            end
            
            it "can add a player to players" do
                expect(Game.find_player(id)).to eq player_1
            end
        end
    end
    
    it "can determine a winner" do
        expect(game.player_wins?(player_1, computer)).to eq true
    end
end