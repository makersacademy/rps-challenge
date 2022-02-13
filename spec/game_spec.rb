require 'game'
describe Game do
  subject(:game) { described_class.new(session) }
  let(:session) { { "name" => "John", "player_shape" => "Rock", "computer_move" => "Scissors" }  }
  it 'Show players name' do
    expect(game.name).to eq('John')
  end
end

