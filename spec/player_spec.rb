require 'player'

describe Player do
  subject(:john) { Player.new("John") }
  
  it 'returns players name' do
    expect(subject.name).to eq "John"
  end

  it 'player makes move' do
    subject.player_move("Rock")
    expect(subject.turn).to eq "Rock"
  end

end
