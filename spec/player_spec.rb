require 'player'

describe Player do

  it 'has a name' do
    player = Player.new("Rizwan")
    expect(player.name).to eq("Rizwan")
  end

  it 'can choose either rock,scissors, or paper' do
    player = Player.new("Rizwan")
    player_choice = player.choice("rock")
    expect(player_choice).to eq("rock")
  end

end