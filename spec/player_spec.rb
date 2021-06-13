require 'player'

RSpec.describe Player do
  it 'can return the name of the player' do
    player = Player.new('Fabio')

    expect(player.name).to eq('Fabio')
  end

  it 'can return his move' do
    subject.move = "rock"
    expect(subject.move).to eq("rock")
  end
end
