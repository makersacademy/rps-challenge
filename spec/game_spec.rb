require 'game'

  describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:computer) { double(:computer) }
  let(:player) { double(:player) }

  describe "initialize" do
    it "initialized with player" do
      expect(game.player).to eq player
    end

    it "initialized with computer" do
      expect(game.computer).to eq computer
    end
  end

  describe "#computer_wins" do
    it "equals 'Computer wins!" do
      expect(game.computer_wins).to eq "Computer wins!"
  end
end

  describe "#player_wins" do
    it "equals 'Player wins!'" do
      allow(player).to receive(:name) {"Connie"}
      expect(game.player_wins).to eq player.name + " wins!"
    end
  end
end




    #
    # describe "#lets_play" do
    #     it "checks that it's a tie when the player and computer choice is are equal" do
    #       allow(player).to receive(:chooose_rock)
    #       allow(computer).to receive(:choose_rock)
    #       expect(game.lets_play).to eq "It's a tie!"
    #     end
    #   end



  #   before do
  #     allow(player).to receive(:name) {"Connie"}

#     it "checks that it's a tie when the player and computer choice is are equal" do
#       allow(player).to receive(:choice) {"rock"}
#       allow(computer).to receive(:choice) {"rock"}
#       expect(game.lets_play).to eq "It's a tie!"
#     end
# #
#     it "checks that player wins when the player choice is rock and computer choice is scissors" do
#       allow(player).to receive(:choice) {"rock"}
#       allow(computer).to receive(:choice) {"scissors"}
#       # expect(game.lets_play).to eq "Connie wins!"
#       expect(game).to receive(:player_wins)
#       game.lets_play
#     end
#   end
# end

  #   it "checks that computer wins when the player choice is rock and computer choice is paper" do
  #     allow(player).to receive(:choice) {"rock"}
  #     allow(computer).to receive(:choice) {"paper"}
  #     expect(game.lets_play).to eq "Computer wins!"
  #     # expect(game).to receive(:computer_wins)
  #     # game.lets_play
  #   end
  #
  #   it "checks that player wins when the player choice is paper and computer choice is scissors" do
  #     allow(player).to receive(:choice) {"paper"}
  #     allow(computer).to receive(:choice) {"scissors"}
  #       expect(game.lets_play).to eq "Computer wins!"
  #     # expect(game).to receive(:computer_wins)
  #     # game.lets_play
  #   end
  #
  #   it "checks that computer wins when the player choice is paper and computer choice is rock" do
  #     allow(player).to receive(:choice) {"paper"}
  #     allow(computer).to receive(:choice) {"rock"}
  #       expect(game.lets_play).to eq "Connie wins!"
  #     # expect(game).to receive(:player_wins)
  #     # game.lets_play
  #   end
  #
  #   it "checks that computer wins when the player choice is scissors and computer choice is paper" do
  #     allow(player).to receive(:choice) {"scissors"}
  #     allow(computer).to receive(:choice) {"paper"}
  #       expect(game.lets_play).to eq "Connie wins!"
  #     # expect(game).to receive(:player_wins)
  #     # game.lets_play
  #   end
  #
  #   it "checks that computer wins when the player choice is scissors and computer choice is rock" do
  #     allow(player).to receive(:choice) {"scissors"}
  #     allow(computer).to receive(:choice) {"rock"}
  #       expect(game.lets_play).to eq "Computer wins!"
  #     # expect(game).to receive(:computer_wins)
  #     # game.lets_play
  #     end
  #   end
#   end
# end
