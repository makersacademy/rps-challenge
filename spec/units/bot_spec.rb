require './lib/bot'

describe Bot do

  it 'can return a rock move' do
    srand(0)
    expect(Bot.new.choice).to eq 'rock'
  end

  it 'can return a paper move' do
    srand(1)
    expect(Bot.new.choice).to eq 'paper'
  end

  it 'can return a scissors move' do
    srand(4)
    expect(Bot.new.choice).to eq 'scissors'
  end

end
