require "single_player"

describe SinglePlayer do
  player = SinglePlayer.new("Tom")
  it 'Returns the name of the player' do
    expect(player.name).to eq "Tom"
  end
  
  it "Default game values" do
    expect(SinglePlayer::DEFAULT_CHOICE).to eq(["rock", "paper", "scissors"])
  end
  
  it 'Returns random choice' do
    expect(player.random).to eq("scissors").or eq("paper").or eq("rock")
  end
 
  it 'Returns paper choice' do
    expect(player.option("paper")).to eq("paper")
  end
  
  it 'Returns computer choice' do
    expect(player.computer).to eq("scissors").or eq("paper").or eq("rock")
  end
  
  it 'Create instance of the object' do
    expect(SinglePlayer.instance).to be_instance_of SinglePlayer
  end

  it 'Testing Action RPS module Paper - Scissors' do
    expect(player.compare("paper", "scissors")).to eq("Player 2 wins")
  end
  
  it 'Testing Action RPS module Rock - Rock' do
    expect(player.compare("rock", "rock")).to eq("It's a draw")
  end
  
  it 'Testing Action RPS module Paper - Rock' do
    expect(player.compare("paper", "rock")).to eq("Player 1 wins")
  end

end
 