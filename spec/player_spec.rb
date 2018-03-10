require "player.rb"

describe Player do
  sign_in_and_play
  it 'retuns Dave as a username' do
    expect(player.username).to eq 'Dave'
  end
end
