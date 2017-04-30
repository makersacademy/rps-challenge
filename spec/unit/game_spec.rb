
describe Game do

  let(:game) { described_class.new('Henry') }

  it '#Registers number of turns played' do
    expect { game.play('ROCK') }.to change { game.turns }.by 1
  end


end
