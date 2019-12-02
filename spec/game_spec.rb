require 'game'
describe Game do

  describe '#generate' do
    it 'randomly selects one of the rps options for the computer' do
    game = Game.new
    allow(game).to receive(:generate) { "Rock" }
    expect(game.generate). to eq("Rock")
  end
end

end
