require 'middle'

RSpec.describe Middle do
  it 'can create a new game' do
    player1 = double('player1')
    player2 = double('player2')
    # game = double('game')
    Middle.create_game(player1, player2)
    expect(Middle.game_instance.players).to eq([player1, player2])
  end
end
