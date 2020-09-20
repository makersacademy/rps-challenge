require 'player'

describe Player do

  subject(:player) { Player.new(name) }
  let(:name) { 'Veronica' }

  it 'takes a name argument on initialisation' do
    expect(Player).to respond_to(:new).with(1).argument
  end

  it 'stores the name given' do
    expect(player.name).to eq(name)
  end

  describe '#make_move(move)' do
    it 'stores the move given' do
      move = 'scissors'
      player.make_move(move)

      expect(player.move).to eq(move)
    end
  end
end