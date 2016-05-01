require 'game'

describe Game do

  let(:player){double :player, choose: nil, choice: "Rock"}
  let(:user_choice){double :user_choice}
  let(:computer){double :computer, choose: nil, choice: "Scissors"}
  subject(:game){described_class.new player, computer}

  it 'initializes with user' do
    expect(game.player1).to eq player
  end

  describe "#game_results" do
    context "when user wins" do
      it "returns user as winner" do
        game.play("Scissors")
        expect(game.result).to eq player
      end

      it "returns computer as winner" do
        allow(computer).to receive(:choice).and_return("Paper")
        game.play("Scissors")
        expect(game.result).to eq computer
      end
    end
  end
end
