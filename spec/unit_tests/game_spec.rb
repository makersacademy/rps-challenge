describe Game do
  
  let(:game) { described_class.new('Rock', 'Paper')}

  it 'responds to the #compare method' do
    expect(game).to respond_to(:compare)
  end

  it 'stores player and computer choices' do
    expect(game.player).to eq 'Rock'
    expect(game.computer).to eq 'Paper'
  end

context 'Player loses' do
  
  it 'Player rock loses against computer paper' do
    expect(game.compare).to eq 'You lost!'
  end

  it 'Player paper loses against computer scissors' do
    losing_game = described_class.new('Paper', 'Scissors')
    expect(losing_game.compare).to eq 'You lost!'
  end

  it 'Player scissors loses against computer rock' do
    losing_game = described_class.new('Scissors', 'Rock')
    expect(losing_game.compare).to eq 'You lost!'
  end

  end
end