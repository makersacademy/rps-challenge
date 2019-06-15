describe Game do

  let(:player) { double(:player) }
  let(:game) { described_class.new(player) }

  it 'counts the number of turns played' do
  #   allow(player).to receive(:name)
  #   expect { game.play('ROCK') }.to change { game.round }.by 1
  # end
  #
  # it 'gives random return of computer play' do
  #   srand(10)
    expect { game.play_control('ROCK') }.to change { game.round }.by 1
  end

end
