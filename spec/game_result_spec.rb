require 'game_result'
describe GameResult do
  it 'shows the game result' do
    game_result = GameResult.new('rock', 'paper', 'paola')
    expect(game_result.calculate_result).to include("computer wins!")
  end
end
