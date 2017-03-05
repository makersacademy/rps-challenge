require 'game'
require 'player'

describe Game do

  let(:single_player_game) { described_class.new(player_1, computer) }
  let(:multi_player_game) { described_class.new(player_1, player_2) }
  let(:player_1) { Player.new("Bob") }
  let(:player_2) { Player.new("Basil") }
  let(:computer) { Computer.new }

  context 'Single player game' do

    describe "#players" do
      it "returns the single player's name" do
        expect(single_player_game.player_1.name).to eq "Bob"
      end
    end

    describe "#player option" do
      it "returns the selected option" do
        single_player_game.p1_select_option("Rock")
        expect(single_player_game.p1_choice).to eq :rock
      end
    end

    describe "#result" do
      context "#player wins" do
        it "checks both choices and chooses the winner" do
          single_player_game.get_result(:rock, :scissors)
          expect(single_player_game.result).to eq(:win)
        end
      end

      context "#player loses" do
        it "checks both choices and chooses the winner" do
          single_player_game.get_result(:scissor, :rock)
          expect(single_player_game.result).to eq(:lose)
        end
      end

      context "#draw" do
        it "checks both choices and chooses the winner" do
          single_player_game.get_result(:paper, :paper)
          expect(single_player_game.result).to eq(:draw)
        end
      end
    end
  end

  context 'multiplayer game' do
    it "returns player_2's name" do
      expect(multi_player_game.player_2.name).to eq "Basil"
    end
    describe "#player_1 option" do
      it "returns the selected option" do
        multi_player_game.p1_select_option("Rock")
        expect(multi_player_game.p1_choice).to eq :rock
      end
    end

    describe "#player_2 option" do
      it "returns the selected option" do
        multi_player_game.p2_select_option("Rock")
        expect(multi_player_game.p2_choice).to eq :rock
      end
    end

  end

end
