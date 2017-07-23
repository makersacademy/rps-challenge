require 'game'
require 'computer'

describe Game do
  subject(:game) { described_class.new(sam, mac) }
  let(:sam) { double(:player, name: "Sam") }
  let(:mac) { double(:computer, name: "Mac") }
  let(:weapon) { :paper }

  describe 'initialize' do
    it "accepts a player instance" do
      expect(game.player).to eq sam
    end

    it "accepts a computer instance" do
      expect(game.computer).to eq mac
    end
  end

  it "gets the player's weapon" do
    game.player_choice(weapon)
    expect(game.player_weapon).to eq :paper
  end

  it 'computer chooses a random weapon' do
    allow(mac).to receive(:random_weapon_chooser) { :rock }
    expect(game.computer_choice).to eq :rock
  end

end
