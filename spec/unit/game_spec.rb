
describe Game do

  let(:game) { described_class.new('Henry') }

  it '#Registers number of turns played' do
    expect { game.play('ROCK') }.to change { game.turns }.by 1
  end

  it '#Gives random return of AI play' do
    srand(10)
    expect(game.ai_play_get).to eq('PAPER')
  end

end
