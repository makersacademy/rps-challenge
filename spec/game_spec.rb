describe Game do

  subject(:game) {described_class.new}

  it 'should be able to decide if there is a draw' do
    game.decide_winner(:rock,:rock)
    expect(game.result).to eq :draw
  end

  it 'should be able to decide if player has lost' do
    game.decide_winner(:paper,:rock)
    expect(game.result).to eq :lose
  end

  it 'should be able to decide if player has won' do
    game.decide_winner(:scissors,:rock)
    expect(game.result).to eq :win
  end

end
