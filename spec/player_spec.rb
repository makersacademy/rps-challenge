require 'player'

RSpec.describe Player do
  let(:sam) { Player.new('sam') }

  it 'has a default name of Guest' do
    expect(subject.name).to eq 'Guest'
  end

  it 'can have a custom name' do
    expect(sam.name).to eq 'Sam'
  end

  it 'can choose a hand to play' do
    sam.play_hand 'ROCK'
    expect(sam.hand).to eq 'Rock'
  end
end
