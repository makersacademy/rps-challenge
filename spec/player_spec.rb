require 'player'

describe Player do
  let(:player) { described_class.new("Titus") }
  after(:each) do
    player.reset_move
  end

  context '#assign_move' 
  it 'can assign a move to the player' do
    player.assign_move("Rock")
    expect(player.move).to eq("Rock")
  end

  context '#reset_moves' 
  it 'can reset the move of the player' do
    player.assign_move("Rock")
    player.reset_move
    expect(player.move).to eq nil
  end

end
