require 'multi_game'

describe MultiGame do
  subject(:multi_game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }

  context "when a new game begins" do
    it "stores player 1" do
      expect(multi_game.player_1).to eq(player_1)
    end

    it "stores player 2" do
      expect(multi_game.player_2).to eq(multi_game.player_2)
    end
  end

  describe "#result" do

      context "when a player selects rock" do
          before do
              allow(player_1).to receive(:player_weapon).and_return(:rock)
          end
          it "wins vs scissors" do
            allow(player_2).to receive(:player_weapon).and_return(:scissors)
            expect(multi_game.result).to eq(:wins)
          end
          it "draws vs rock" do
            allow(player_2).to receive(:player_weapon).and_return(:rock)
            expect(multi_game.result).to eq(:draw)
          end
          it "loses vs paper" do
            allow(player_2).to receive(:player_weapon).and_return(:paper)
            expect(multi_game.result).to eq(:loses)
          end
          it "wins vs lizard" do
            allow(player_2).to receive(:player_weapon).and_return(:lizard)
            expect(multi_game.result).to eq(:wins)
          end
        end
      end



end
