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

context 'Player wins' do
it 'Player rock wins against computer scissors' do
    winning_game = described_class.new('Rock', 'Scissors')
    expect(winning_game.compare).to eq 'You won!'
  end

  it 'Player paper wins against computer rock' do
    winning_game = described_class.new('Paper', 'Rock')
    expect(winning_game.compare).to eq 'You won!'
  end

  it 'Player scissors wins against computer paper' do
    winning_game = described_class.new('Scissors', 'Paper')
    expect(winning_game.compare).to eq 'You won!'
  end


end

end