require 'game'
describe Game do

  let(:ed) {double(:player, name: "Ed")}
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
      game.check_winner
      expect(game.winner).to eq "Ed"
    end
    it 'checks winner can be reset' do
      game.store_player_rpc(:rock)
      game.instance_variable_set("@comp_rpc", :scissors)
      game.check_winner
      game.instance_variable_set("@comp_rpc", :paper)
      game.check_winner
      expect(game.winner).to eq "Computer"
    end
  end

  describe '#print_winner' do
    it 'checks and prints the winner when player' do
      game.store_player_rpc(:rock)
      game.instance_variable_set("@comp_rpc", :scissors)
      game.check_winner
      expect(game.print_winner). to eq "Ed has won!"
    end

    it 'checks and prints the winner when player' do
      game.store_player_rpc(:rock)
      game.instance_variable_set("@comp_rpc", :scissors)
      game.check_winner
      game.instance_variable_set("@comp_rpc", :paper)
      game.check_winner
      expect(game.print_winner). to eq "Computer has won!"
    end
    it 'checks and prints the winner when player' do
      game.store_player_rpc(:rock)
      game.instance_variable_set("@comp_rpc", :rock)
      game.check_winner
      expect(game.print_winner). to eq "It's a draw"
    end
  end
end
