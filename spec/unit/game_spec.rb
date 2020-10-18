require './lib/game'

describe Game do

  let(:cam) {Player.new('Cam')}
  let(:computer) {Computer.new}
  
  it 'determines a winner between the computer and the player' do
    srand(4)
    game = Game.new(cam, computer)
    computer_choice = computer.choice
    expect(game.rps(cam.choice('Rock'), computer_choice)).to eq cam.name
  end

end