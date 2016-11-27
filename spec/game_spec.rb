require 'game'

describe Game do
subject(:game) { described_class.new(hand_choice) }
let(:hand_choice) { {"player_choice" => :rock, "computer_choice" => :scissors} }

  describe '#result' do
    it "compares the player's choice and the computer's choice" do
      expect(game.result).to eq(:win)
    end
  end

end
