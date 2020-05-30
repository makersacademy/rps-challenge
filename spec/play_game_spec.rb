require 'play_game'

describe PlayGame do

  it 'Should have a PlayGame class' do
    expect(PlayGame).to respond_to(:new)
  end

  it 'Should have an array of rock, paper, scissors' do
    expect(PlayGame::RPSARRAY).to eq(['Rock', 'Paper', 'Scissors']) 
  end
end