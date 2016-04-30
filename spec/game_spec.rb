require 'game'

describe Game do

  let(:player){double :player}
  let(:user_choice){double :user_choice}
  subject(:game){described_class.new player}

  it 'initializes with user' do
    expect(game.player1).to eq player
  end

  it "displays user's choice" do
    game.choose("Rock")
    expect(game.user_choice).to eq "Rock"
  end

  it "chooses something for computer player" do
    allow(Kernel).to receive(:rand).and_return(1)
    expect(game.computers_pick).to eq "Paper"
  end

  describe "#game_results" do
    context "when user wins" do
      it "returns user as winner" do
        allow(Kernel).to receive(:rand).and_return(1)
        game.computers_pick
        game.choose("Scissors")
        expect(game.winner).to eq player
      end

      it "returns computer as winner" do
        allow(Kernel).to receive(:rand).and_return(1)
        game.computers_pick
        game.choose("Rock")
        expect(game.winner).to eq "Computer"
      end
    end
  end
end
