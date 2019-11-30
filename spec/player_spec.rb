require 'player'

describe 'Player' do 

  let(:player) { Player.new("Ben") }
  let(:player2) { Player.new("Leonidas") }
  let(:game) { Game.new(player) }

  it "should return the name attribute passed as an argument" do
    expect(player.name).to eq "Ben"
  end

  context "when the player has chosen Rock, Paper, or Scissors" do 

    it "their choice should be shown by calling :choice on that player's class object" do
      game.player_1.chooses("Rock")
      expect(game.player_1.choice).to eq "Rock"
    end

  end

end 