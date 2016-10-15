require 'views/game'

describe Game do
  subject(:game) {Game.new('Dibbles')}
  let(:computer) {double :computer}

  context 'Initializing game'
  it 'starts with one player and one computerised player' do
    expect(game.player1.name).to eq 'Dibbles'
    expect(game.player2.name).to eq 'computer'
  end

  context 'Making selections'

  it 'allows player1 to make a selection' do
    allow('Dibbles').to receive(:selection).and to_return(:rock)
    expect(game.player1_selection).to eq 'rock'
  end

  it 'allows player1 to make a selection' do
    allow('computer').to receive(:selection).and to_return(:paper)
    expect(game.player1_selection).to eq 'rock'
  end

  context 'It declares a winner' do
    it 'declares a winner' do
    allow('Dibbles').to receive(:selection).and to_return(:rock)
    allow('computer').to receive(:selection).and to_return(:scissors)
    expect(game.winner).to eq 'Dibbles'
  end
end

end
