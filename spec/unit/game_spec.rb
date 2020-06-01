require 'game'

describe Game do
  subject(:game) { described_class.new(options) }
  let(:options) { { "player1_name" => "Judy", "player_option" => "rock", "computer_option" => "scissors" } }

  describe "#player1_name" do
    it "stores the players name" do
      expect(game.player1_name).to eq "Judy"
    end

    # describe '#winner?' do
    #   it 'returns true when player1 choses rock' do
    #     expect(game.winner?).to eq true
    #   end
    # end
    # describe '#lose?' do
    #   it 'returns true when player1 choses paper' do
    #     expect(game.lose?).to eq true
    #   end
    # end
    # describe '#draw?' do
    #   it 'returns true when player1 choses rock' do
    #     expect(game.draw?).to eq true
    #   end
    # end
  end
end
