require 'player'

describe Player do
  it 'has an initial move of nil' do
    expect(subject.move).to eq nil
  end
  it 'knows the move the player made' do
    savanna = Player.new('rock')
    expect(savanna.move).to eq 'rock'
  end
end
