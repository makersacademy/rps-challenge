describe Game do
  
  let(:game) { described_class.new('Rock', 'Paper')}

  it 'responds to the #compare method' do
    expect(game).to respond_to(:compare)
  end

  it 'stores player and computer choices' do
    expect(game.player).to eq 'Rock'
    expect(game.computer).to eq 'Paper'
  end

end