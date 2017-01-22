require 'game'

describe Game do
    
    subject(:game)  { described_class.new }
    
    let(:player_1)  { double :player }
    
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
    
    describe "result logic tests" do
    
        it "rock vs rock" do
            expect(game.result(:rock, :rock)).to eq :draw
        end
        
        it "rock vs paper" do
            expect(game.result(:rock, :paper)).to eq :lose
        end
        
        it "rock vs scissors" do
            expect(game.result(:rock, :scissors)).to eq :win
        end
        
        it "paper vs paper" do
            expect(game.result(:paper, :paper)).to eq :draw
        end
        
        it "paper vs scissors" do
            expect(game.result(:paper, :scissors)).to eq :lose
        end
        
        it "paper vs rock" do
            expect(game.result(:paper, :rock)).to eq :win
        end
        
        it "scissors vs scissors" do
            expect(game.result(:scissors, :scissors)).to eq :draw
        end
        
        it "scissors vs rock" do
            expect(game.result(:scissors, :rock)).to eq :lose
        end
        
        it "scissors vs paper" do
            expect(game.result(:scissors, :paper)).to eq :win
        end
    end
end