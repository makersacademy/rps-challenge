
describe Game do

  let (:player) { double(:player) }
  let (:game) { described_class.new(player) }

  it '#Registers number of turns played' do
    allow(player).to receive(:name)
    expect { game.play('ROCK') }.to change { game.round }.by 1
  end

  it '#Gives random return of AI play' do
    srand(10)
    expect(game.ai_play_get).to eq('PAPER')
  end

end
