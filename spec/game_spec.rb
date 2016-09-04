require 'game'

describe Game do

  subject(:test_game) {described_class.new(player_class.new, player_class2.new)}
  let(:player_class) { double :player_class, new: matthew}
  let(:player_class2) {double :player_class2, new: rafaela}
  let(:matthew) { double :matthew, show_name: "Matthew", show_points: 1, store_move: nil, show_last_move: :rock, add_win: nil}
  let(:rafaela) { double :rafaela, show_name: "Rafaela", show_points: 0, store_move: nil, show_last_move: :scissors, add_win: nil}

  describe "#initialize" do

    it 'should accept two players as arguments' do
      expect(test_game.player_one.show_name).to eq "Matthew"
      expect(test_game.player_two.show_name).to eq "Rafaela"
    end

    it 'should set the current_player to player_one' do
      expect(test_game.current_player.show_name).to eq "Matthew"
    end

    it 'should set move_count to 0' do
      expect(test_game.move_count).to eq 0
    end

    it 'should create a new results object' do
      expect(test_game.results).to_not be nil
    end

    it 'should set winner to nil' do
      expect(test_game.winner).to be nil
    end

    it 'should set draw to false' do
      expect(test_game.draw).to be false
    end

  end

  describe "#switch_players" do

    it "should switch current_player form player one to player two" do
      test_game.switch_players
      expect(test_game.current_player.show_name).to eq "Rafaela"
    end

  end

  describe "#round_complete" do

    it 'should return false if only one player has played' do
      test_game.switch_players
      expect(test_game.round_complete).to eq false
    end

    it 'should return true if both players have played' do
      test_game.switch_players
      test_game.switch_players
      expect(test_game.round_complete).to eq true
    end

  end

  describe '#reset_count' do

    it 'should reset the move_count if the round_complete' do
      test_game.switch_players
      test_game.switch_players
      test_game.reset_count
      expect(test_game.move_count).to eq 0
    end
  end

  describe '#play' do

    it 'should log the move' do
      test_game.play(:rock)
      expect(test_game.player_one.show_last_move).to eq :rock
    end

  end

  context 'when someone wins a round' do

    before(:each) do
      test_game.play(:rock)
      test_game.switch_players
      test_game.play(:scissors)
    end

    it 'should return rock as winner in Rock v Scissors' do
      expect(test_game.result).to eq :rock
    end

    it 'should set the winner after finding the result' do
      test_game.set_winner
      expect(test_game.winner).to eq matthew
    end

    it "should send an add_win command to the player instance" do
      test_game.set_winner
      expect(matthew).to have_received(:add_win)
    end

end


end
