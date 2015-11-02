require './lib/game_class'

describe Game do

let(:game) {described_class.new("Scissors")}
let(:gamerandomizer) { doubleGameRandomizer.new }

  describe "#winner" do

      context "when player chooses scissors" do

        it 'wins if game returns "Paper"' do
        allow(gamerandomizer).to receive(:randomize).and_return("Paper")
        expect(game.winner(gamerandomizer.randomize)).to eq "Player wins"
        end

        it 'loses if game returns "Rock"' do
        expect(game.winner("Rock")).to eq "Game wins"
        end

        it 'plays again if game returns "Scissors"' do
        expect(game.winner("Scissors")).to eq "Nobody wins"
        end
      end
  end

end
