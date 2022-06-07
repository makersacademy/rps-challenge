require 'game'


RSpec.describe Game do
    context "when the player chooses rock, and the computer choice is scissor" do
        it "Paper beat Rock" do
          player_1 = Game.new("rock","scissor")
          expect(player_1.win).to eq 'win'
        end
    end
    context "when the player chooses paper, and the computer choice is rock" do
        it "Paper beat Rock" do
          player_1 = Game.new("paper","rock")
          expect(player_1.win).to eq 'win'
        end
    end
    context "when the player chooses scissor, and the computer is paper" do
        it "Scissor beat Paper" do
            player_1 = Game.new("scissor", "paper")
            expect(player_1.win).to eq 'win'
        end
    end
    context "when the computer chooses rock, and the player choice is scissor" do
        it "Rock beat Scissor" do
          @random_choice = Game.new("scissor", "rock")
          expect(@random_choice.lose).to eq 'lose'
        end
    end
    context "when the computer chooses scissor, and the player choice is paper" do
        it "Scissor beat Paper" do
          @random_choice = Game.new("paper", "scissor")
          expect(@random_choice.lose).to eq 'lose'
        end
    end
    context "when the computer chooses scissor, and the player choice is paper" do
        it "Rock beat Scissor" do
          @random_choice = Game.new("scissor", "rock")
          expect(@random_choice.lose).to eq 'lose'
        end
    end
    context "when the computer chooses the same as the player" do
        it "Draw" do
          clash = Game.new("scissor", "scissor")
          expect(clash.draw).to eq 'draw'
        end
    end
    context "when the computer chooses the same as the player" do
        it "Draw" do
          clash = Game.new("rock", "rock")
          expect(clash.draw).to eq 'draw'
        end
    end
    context "when the computer chooses the same as the player" do
        it "Draw" do
          clash = Game.new("paper", "paper")
          expect(clash.draw).to eq 'draw'
        end
    end
  
  
end
  

# describe Game do
#   subject(:game) { described_class.new(player_1, random_choice) }
#     let(:player_1) { double :player}
#     let(:random_choice) { double :player}
# #   subject(:computer) { Game.new('Hafiz','Computer') }
  
#   describe '#player beats computer' do
#     it 'shows win' do
#       expect(game.win).to eq player_1
#     end
#   end
#   describe '#computer beats player' do
#     it 'shows win' do
#       expect(game.win).to eq random_choice
#     end
#   end

 