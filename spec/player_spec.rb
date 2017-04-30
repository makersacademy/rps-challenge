require_relative '../app.rb'

describe Player do
  subject(:player) { described_class.new('Will') }

  it 'Stores player names' do
    expect(player.name).to eq 'Will'
  end

  it 'Records a player\'s move' do
    player.make_move('Rock')
    expect(player.move).to eq 'Rock'
  end
end
