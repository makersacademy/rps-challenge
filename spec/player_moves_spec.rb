require 'player_moves'

describe PlayerMoves do
  let(:pm) { described_class.instance }
  after(:each) do
    pm.reset
  end

  context '#add_name' 
  it 'can add a name to the name list' do
    pm.add_name("Titus")
    expect(pm.name_list).to match_array(["Titus"])
  end

  context '#add_move' 
  it 'can add a move to the move list' do
    pm.add_move("Rock")
    expect(pm.move_list).to match_array(["Rock"])
  end

  context '#turn' 
  it 'can identify player 1 to go assuming no one has made a move' do
    pm.add_name("Titus")
    pm.add_name("Chang")
    expect(pm.turn).to eq("Titus")
  end

  it 'can identify player 2 to go assuming player 1 has made a move' do
    pm.add_name("Titus")
    pm.add_name("Chang")
    pm.add_move("Rock")
    p pm.name_list
    p pm.move_list
    expect(pm.turn).to eq("Chang")
  end

end
