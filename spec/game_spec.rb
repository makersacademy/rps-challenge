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

  end

  describe "#show_name" do

    it 'should show the player name' do
      expect(test_game.player_one.show_name).to eq "Matthew"
    end
  end

  describe "#show_points" do

    it 'should show the player points' do
      expect(test_game.player_two.show_points).to eq 0
    end
  end

end
