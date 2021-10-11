require "player"
require "multi_player"

describe Player do
  player = Player.new("Tom")
  it 'Returns the name of the player' do
    expect(player.name).to eq "Tom"
  end
end
  
describe MultiPlayer do
  player = Player.new("Tom")
  multi_player = MultiPlayer.new(player)
  it 'Returns the name of the player' do
    expect(multi_player.player1.name).to eq "Tom"
  end
 
  it "Default game values" do
    expect(MultiPlayer::DEFAULT_CHOICE).to eq(["rock", "paper", "scissors"])
  end
  
  it 'Returns random choice player1' do
    multi_player.player1_random
    expect(multi_player.player1_choice).to eq("scissors").or eq("paper").or eq("rock")
  end
 
  it 'Returns paper choice player1' do
    multi_player.player1_option("paper")
    expect(multi_player.player1_choice).to eq("paper")
  end
  
  it 'Returns random choice player2' do
    multi_player.player2_random
    expect(multi_player.player2_choice).to eq("scissors").or eq("paper").or eq("rock")
  end
  
  it 'Returns paper choice player2' do
    multi_player.player2_option("paper")
    expect(multi_player.player2_choice).to eq("paper")
  end

  it 'Create instance of the object' do
    MultiPlayer.create(player) 
    expect(MultiPlayer.instance).to be_instance_of MultiPlayer
  end

  it 'Testing Action RPS module Paper - Scissors' do
    expect(multi_player.compare("paper", "scissors")).to eq("Player 2 wins")
  end
  
  it 'Testing Action RPS module Rock - Rock' do
    expect(multi_player.compare("rock", "rock")).to eq("It's a draw")
  end
  
  it 'Testing Action RPS module Paper - Rock' do
    expect(multi_player.compare("paper", "rock")).to eq("Player 1 wins")
  end
  
  it 'Testing Multiplayer turn condition player1' do
    expect(multi_player.turn_player1?).to eq(false).or eq(true)
  end
  
  it 'Testing Multiplayer turn condition player2' do
    expect(multi_player.turn_player2?).to eq(false).or eq(true)
  end
  
  it 'Testing Multiplayer turn condition compare' do
    expect(multi_player.turn_compare?).to eq(false).or eq(true)
  end

end
 