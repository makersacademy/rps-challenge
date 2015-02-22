require 'game'

describe Game do
  let(:game){Game.new}
  let(:player){double :player, choice: :paper}

  
  context "setup" do

    it "can have a player added" do
      game.add(player)
      expect(game.player).to eq player 
    end

    it "should know when its ready to start" do
      game.add(player)
      expect(game).to be_ready
    end

  end

  context "play" do

    it "should receive a player's choice" do
      game.add(player)
      expect(game.player.choice).to eq (:paper)
    end

    it "should return a random option" do
      allow(game).to receive(:get_random_choice).and_return(:rock)
      expect(game.get_random_choice).to eq :rock
    end

    it "should be able to declare a winner" do
      expect(game.winner?(:paper,:rock)).to eq(:win)
    end

    it "should be able to declare a loser" do
      expect(game.winner?(:rock,:paper)).to eq(:lose)
    end

    it "should be able to declare a draw" do
      expect(game.winner?(:scissor,:scissor)).to eq(:draw)
    end

    it "should be able to track the score" do
      game.winner?(:paper,:rock)
      expect(game.player_score).to eq(1)
    end


  end
end