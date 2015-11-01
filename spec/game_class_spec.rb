require './lib/game_class'

describe Game do

let(:game) {described_class.new("scissors")}

  describe "#winner" do

      context "when player chooses scissors" do

        it 'wins if game returns "Paper"' do
        expect(game.winner("paper")).to eq "Player wins"
        end

        it 'loses if game returns "Rock"' do
        expect(game.winner("rock")).to eq "Game wins"
        end

        it 'plays again if game returns "scissors"' do
        expect(game.winner("scissors")).to eq "Nobody wins"
        end
      end
  end

end
