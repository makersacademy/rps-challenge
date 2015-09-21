require 'player'

describe Player do

  it '# expect player to respond to choose_weapon' do
    expect(subject).to respond_to(:choose_weapon)
  end

  it 'expect choose_weapon to store rock in player_weapon' do
    subject.choose_weapon("rock")
    expect(subject.player_weapon).to eq("rock")
  end

  it 'expect choose_weapon to store paper in player_weapon' do
    subject.choose_weapon("paper")
    expect(subject.player_weapon).to eq("paper")
  end

  it 'expect choose_weapon to store scissors in player_weapon' do
    subject.choose_weapon("scissors")
    expect(subject.player_weapon).to eq("scissors")
  end

end