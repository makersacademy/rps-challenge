# require 'game'
# require 'player'

# describe Game do

#   let(:player) { double(Player.new("Player")) }
    
#   describe "#computer move" do
#     it "returns a computer's move" do
#       allow(subject).to receive(:move) { "Paper" }
#       expect(subject.cp_move).to eq "Paper"
#     end
#   end

#   describe "#player win" do
#     it "produces a move that allows player to win" do
#       allow(player).to receive(:player_move) { "Rock" }
#       allow(subject).to receive(:cp_move) { "Scissors" }
#       expect(subject.message).to eq "You're the winner!"
#     end
#   end

#   describe "#computer win" do
#     it "produces a move that allows player to lose" do
#       allow(player).to receive(:player_move) { "Rock" }
#       allow(subject).to receive(:move) { "Paper" }
#       expect(subject.message).to eq "Sorry, you lost!"
#     end
#   end

#   describe "#draw" do
#     it "produces a move that produces a draw" do
#       allow(player).to receive(:player_move) { "Rock" }
#       allow(subject).to receive(:cp_move) { "Rock" }
#       expect(subject.message).to eq "It's a draw!"
#     end
#   end

# end
