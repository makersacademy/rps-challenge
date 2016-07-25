require "spec_helper"
require "game"

describe Rpsls do

  subject(:game) { described_class.new(player) }
  let(:player) { double :player }
  let(:player_bet) { "lizard" }
  let(:player_bet2) { "scissors" }

    it 'shows player name' do
      expect(game.player).to eq player
    end

    describe "#number_to_name" do
      it "returns lizard when given 3" do
        expect(game.number_to_name(3)).to eq "lizard"
      end
    end

    describe "#name_to_number" do
      it "returns 3 when given lizard" do
        expect(game.name_to_number(player_bet)).to eq 3
      end
    end

    describe "#action" do
      context "tie" do
        it "returns action for chosen options" do
          allow(game).to receive(:computer_bet).and_return(3)
          expect(game.action(player_bet)).to eq "TIE"
        end
      end

      context "lizard poisons Spock" do
        it "returns action for chosen options" do
          allow(game).to receive(:computer_bet).and_return(1)
          expect(game.action(player_bet)).to eq "lizard poisons Spock"
        end
      end

      context "lizard poisons Spock" do
        it "returns action for chosen options" do
          allow(game).to receive(:computer_bet).and_return(1)
          expect(game.action(player_bet2)).to eq "Spock smashes scissors"
        end
      end
    end

    describe '#winner' do
      context "players select same options" do
        it "returns tie" do
          allow(game).to receive(:computer_bet).and_return(3)
          expect(game.winner(player_bet)).to eq "#{player} and computer tie!"
        end
      end

      context "player selects lizard and computer Spock" do
        it "player wins" do
          allow(game).to receive(:computer_bet).and_return(1)
          expect(game.winner(player_bet)).to eq "#{player} wins"
        end
      end

      context "player selects scissors and computer Spock" do
        it "computer wins" do
          allow(game).to receive(:computer_bet).and_return(1)
          expect(game.winner(player_bet2)).to eq "Computer wins"
        end
      end

    end

end
