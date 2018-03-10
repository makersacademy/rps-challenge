require "player.rb"

describe Player do
  it 'retuns Dave as a username' do
    player = Player.new('Dave')
    expect(player.name).to eq 'Dave'
  end
end
