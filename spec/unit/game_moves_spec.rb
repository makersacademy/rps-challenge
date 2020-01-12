require 'game_moves'

describe GameLogic do

  describe "#load_file" do
    it "loads in the Json file" do
      gamelogic = GameLogic.new()
      result = gamelogic.load
      expect(result.length).to eq 9
    end
  end

  describe "#find_the_hash" do
    it 'searches the hash' do
      player_choice = "Paper"
      computer_choice = "Rock"
      subject = GameLogic.new
      subject.load
      expect(subject.find_the_combination(player_choice, computer_choice)).to eq({ "play1" => "Paper", "play2" => "Rock", "play1_score" => 1, "play2_score" => 0 })
    end
  end

end
