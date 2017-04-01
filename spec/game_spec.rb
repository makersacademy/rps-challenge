require 'game'
describe Game do

  let(:ed) {double(:player)}
  subject(:game) {described_class.new(ed)}


  it 'returns the player' do
  expect(game.player).to eq ed
  end

  describe '#generate_rpc' do
    it 'generates a rock' do
      game.generate_rpc
      expect([:rock,:paper,:scissors]).to include game.comp_rpc
    end
  end
  describe '#store_player_rpc' do
    it 'players can store their choice' do
      game.store_player_rpc(:rock)
      expect(game.player_rpc).to eq :rock
    end
  end

  describe '#check_winner' do
    it 'checks rock beats paper' do
      game.store_player_rpc(:rock)
      game.instance_variable_set("@comp_rpc", :scissors)
      expect(game.check_winner).to eq "PLAYER WINS!!"
    end
  end
end
