require 'game'

describe Game do

  subject(:test_game) {described_class.new(player_class.new, player_class2.new)}
  let(:player_class) { double :player_class, new: matthew}
  let(:player_class2) {double :player_class2, new: rafaela}
  let(:matthew) { double :matthew, show_name: "Matthew"}
  let(:rafaela) { double :rafaela, show_name: "Rafaela"}

  describe "#initialize" do

    it 'should accept two players as arguments' do
      expect(test_game.player_one_show_name).to eq "Matthew"
      expect(test_game.player_two_show_name).to eq "Rafaela"
    end


  end
end
