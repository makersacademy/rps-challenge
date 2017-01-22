require 'game'

describe Game do
    
    subject(:game)  { described_class.new }
    
    let(:player_rock)       { double :player, choice: :rock }
    let(:player_paper)      { double :player, choice: :paper }
    let(:player_scissors)   { double :player, choice: :scissors }
    
    let(:computer_rock)  { double :computer, choice: :rock }
    let(:computer_paper)  { double :computer, choice: :paper }
    let(:computer_scissors)  { double :computer, choice: :scissors }
    
    describe "class methods" do
        context "a player has been added" do
            let(:id) { 1 }
            
            before do
                Game.add_player(id, player_rock)
            end
            
            it "can add a player to players" do
                expect(Game.find_player(id)).to eq player_rock
            end
        end
    end
    
    describe "result logic tests" do
    
        it "rock vs rock" do
            expect(game.result(player_rock, computer_rock)).to eq :draw
        end
        
        it "rock vs paper" do
            expect(game.result(player_rock, computer_paper)).to eq :lose
        end
        
        it "rock vs scissors" do
            expect(game.result(player_rock, computer_scissors)).to eq :win
        end
        
        it "paper vs paper" do
            expect(game.result(player_paper, computer_paper)).to eq :draw
        end
        
        it "paper vs scissors" do
            expect(game.result(player_paper, computer_scissors)).to eq :lose
        end
        
        it "paper vs rock" do
            expect(game.result(player_paper, computer_rock)).to eq :win
        end
        
        it "scissors vs scissors" do
            expect(game.result(player_scissors, computer_scissors)).to eq :draw
        end
        
        it "scissors vs rock" do
            expect(game.result(player_scissors, computer_rock)).to eq :lose
        end
        
        it "scissors vs paper" do
            expect(game.result(player_scissors, computer_paper)).to eq :win
        end
    end
end