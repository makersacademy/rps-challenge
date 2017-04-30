
describe Game do

  let (:player) { double(:player) }
  let (:game) { described_class.new(player) }

  it '#Registers number of turns played' do
    expect { game.play_control('ROCK') }.to change { game.round }.by 1
  end

end
