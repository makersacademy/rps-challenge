require 'videogame'
require 'player'

describe Videogame do

  subject(:game) {described_class.new("jenny", "computer")}
  let(:player_1) {Player.new("jenny")}
  let(:player_2) {Computer.new("Matrix")}

  context "#initialize" do
    it '#initializes player name' do
      expect(game.player_1).to be_an_instance_of Player
    end
  end

  context "#play" do
    it "returns winner" do
    player_1.move
    player_2.computer_move
    expect(game.play).to eq "TIE!!"
    end
  end

end
