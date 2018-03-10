require "player.rb"

describe Player do
  it 'retuns Dave as a username' do
    expect(player.username).to eq 'Dave'
  end
end
