require 'game'

describe Game do

  subject(:test_game) {described_class.new(player_class.new, player_class2.new)}
  let(:player_class) { double :player_class, new: matthew}
  let(:player_class2) {double :player_class2, new: rafaela}
  let(:matthew) { double :matthew, show_name: "Matthew", show_points: 0}
  let(:rafaela) { double :rafaela, show_name: "Rafaela", show_points: 0}

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

end
