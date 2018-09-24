require 'results'

describe Results do

  let(:player_one) { double(:player_one) }

  describe '#message(player1)' do
    it "Tells the player if they've won" do
      allow(subject).to receive(:win_lose_draw).and_return("win")
      expect(subject.message(player_one)).to eq("Congratulations, you've won!")
    end

    it "Tells the player if they've lost" do
      allow(subject).to receive(:win_lose_draw).and_return("lose")
      expect(subject.message(player_one)).to eq("You lose!")
    end

    it "Tells the player if they've drawn" do
      allow(subject).to receive(:win_lose_draw).and_return("draw")
      expect(subject.message(player_one)).to eq("It's a draw")
    end
  end
end
