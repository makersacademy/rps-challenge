require_relative '../app.rb'

describe User do
  subject(:player) { described_class.new('Jake') }

  it 'User names' do
    expect(player.name).to eq 'Jake'
  end

  it "Records a player's move" do
    player.make_move('Rock')
    expect(player.move).to eq 'Rock'
  end
end
