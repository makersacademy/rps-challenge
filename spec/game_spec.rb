require 'game'

describe Game do
  subject(:game) { Game.new }
  describe '#robot_option' do
    it 'returns robot option' do
      expect(["rock", "paper", "scissors"]).to include game.robot_option
    end
  end

  describe 'Rock paper scissors' do
  it 'returns the result of rock' do
    expect(game.rockpaperscissors).to eq 'Rock beats scissors. Anh wins!'
  end
end

end
