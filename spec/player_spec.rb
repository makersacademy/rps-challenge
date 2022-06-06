require 'player'

describe Player do 
  it "it returns the option (rock, paper, scissor) that the player has selected" do 
    player_options = Player.new("rock")
    expect(player_options.option).to eq "rock"
  end 
end 
