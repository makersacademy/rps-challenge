require 'game'

describe Game do
  subject(:game) { described_class.new(player) }

  it 'is initialised with an instance of Player class' do
    player = Player.new("name")
    game = Game.new(player)
    expect(game.player.name).to eq 'name'
  end

  it 'initialises with an instance variable, @choice' do
    player = Player.new("name")
    expect(player.choice).to eq nil
  end

# describe '#wins?' do
#   let(:game) { double(:game, choice: "Rock", computer_choice: "Paper") }
#     it 'has a method for establishing if a move wins' do
#       expect(game.wins?).to eq true
#   end
# end

end
