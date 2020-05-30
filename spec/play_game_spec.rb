require 'play_game'

describe PlayGame do
  let(:subject) {described_class.new('Paper')}

  it 'Should have a PlayGame class' do
    expect(PlayGame).to respond_to(:new)
  end

  it 'Should have an array of rock, paper, scissors' do
    expect(PlayGame::RPSARRAY).to eq(['Rock', 'Paper', 'Scissors']) 
  end

  it 'Should accept the player choice as an argument' do 
    expect(subject.player_choice).to eq('Paper')
  end
end