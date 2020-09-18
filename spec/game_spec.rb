require "game"

describe Game do
  let(:charlotte) { Player.new("Charlotte") }
  let(:johan) { Player.new("Johan") }

=begin
  let(:charlotte) { double :player, player: "charlotte" }
  let(:johan) { double :player, player: "johan" }
  let(:player_class_double) { double :player, new: player_double(player) }

  let(:game_double) { double :game, player_one: charlotte, player_two: johan }
  let(:game_class_double) { double :game, new: game_double(player_one, player_two) }
=end

  it "expects game to be initated with two players " do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  describe "#rock" do
    it "plays rock" do
      expect(charlotte.rock).to eq "Rock"
    end
  end

  describe "#sissor" do
    it "plays sissor" do
      expect(charlotte.sissor).to eq "Rock"
    end
  end

  describe "#paper" do
    it "plays paper" do
      expect(charlotte.paper).to eq "Rock"
    end
  end

=begin
  describe "#attack" do
    it "attacks a player" do
      expect(gary).to receive(:take_damage)
      game.attack(gary)
    end
=end
end
