require 'rps_game'

describe RpsGame do

  it 'returns an array of weapons on request' do
    expect(subject.weapons).to eq ["Rock", "Paper", "Scissors"]
  end

  it 'let the user select a weapon' do
    expect(subject.choose_weapon("Paper")).to eq :paper
  end

end
