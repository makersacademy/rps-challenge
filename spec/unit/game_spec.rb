describe Game do

  let(:game) { described_class.new('Henry') }

  it 'counts the number of turns played' do
    expect { game.play('ROCK') }.to change { game.turns }.by 1
  end

  it 'gives random return of weapon play' do
    srand(10)
    expect(game.get_weapon).to eq('PAPER')
  end
  
end
