require 'views/game'

describe Game do
  subject(:game) {Game.new('Dibbles')}
  let(:computer) {double :computer}

  context 'Initializing game'
  it 'starts with one player' do
    expect(game.player1.name).to eq 'Dibbles'
  end

  context 'Making selections'

  context 'It declares a winner' do
    it 'declares a winner' do
    game.player1= 'rock'
    player2_selection = 'scissors'
    expect(game.winner).to eq 'Dibbles'
  end
end

end
