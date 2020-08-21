require "player"

describe Player do 
  let(:player) { Player.new("Kiro") }

  it { expect(player.name.is_a?(String)).to be true }
  
  
  it "Can choose an option to play on each round" do  
    player.round_choice("Rock") 
    expect(player.choice).to eq "Rock" 
  end

  describe "#instance" do
    it "return an instance of the created class" do 
      second_player = Player.create("Spas")
      expect(Player.instance).to eq second_player
    end 
  end

end
