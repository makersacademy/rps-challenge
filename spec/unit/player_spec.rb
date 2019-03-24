require 'player'

describe Player do
  it 'Creates a new player with a name' do
    player = Player.new("Sam")
    expect(player.name).to eq "Sam"
  end

  it 'delivers scissors when running random_choice for a computer player' do
    player = Player.new("Computer")
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    expect(player.update_choice).to eq("Scissors")
  end

  it 'sets the player choice when not the computer' do
    player = Player.new("Sam")
    expect(player.update_choice("Rock")).to eq("Rock")
  end
end
