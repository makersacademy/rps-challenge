require 'player'

describe Player do
  subject(:player) { Player.new("Noa") }

  it 'should have a name' do
    expect(subject.player_name).to eq "Noa"
  end

  it 'chooses a weapon' do
    subject.player_choice("Rock")
    expect(subject.weapon).to eq "Rock"
  end
end
