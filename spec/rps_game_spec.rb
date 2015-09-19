require 'rps_game'

describe RpsGame do

  it 'returns an array of weapons on request' do
    expect(subject.weapons).to eq ["Rock", "Paper", "Scissors"]
  end

  it 'let the user select a weapon' do
    expect(subject.choose_player_weapon("Paper")).to eq :paper
  end

  it 'can randomly choose the computer weapon' do
    expect(subject.choose_computer_weapon.class).to eq Symbol
  end

end
