require 'rules'

describe Rules do

  it 'returns nil if game drawn' do
    draw = Rules.new('Rock', 'Rock')
    expect(draw.winner).to eq(nil)
  end

  it 'returns :p2 if player1 is rock & player2 is paper' do
    p2win = Rules.new('Rock', 'Paper')
    expect(p2win.winner).to eq(:p2)
  end

  it 'returns :p2 if player1 is paper & player2 is scissors' do
    p2win = Rules.new('Paper', 'Scissors')
    expect(p2win.winner).to eq(:p2)    
  end

  it 'returns :p2 if player1 is scissors & player2 is rock' do
    p2win = Rules.new('Scissors', 'Rock')
    expect(p2win.winner).to eq(:p2)
  end

  it 'returns :p1 for other results' do
    p1win = Rules.new('Scissors', 'Paper')
    expect(p1win.winner).to eq(:p1)
  end

end
