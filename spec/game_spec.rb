require 'game'

describe Game do

  let(:player) { double(:player, name: 'Dave', weapon: 'ROCK') }
  subject(:game) { described_class.new(player) }

  describe "player" do
    it "returns the player" do
      expect(game.player_name).to eq 'Dave'
    end
  end

  describe "#set_weapon" do
    it 'should set the player\'s weapon' do
      allow(player).to receive(:set_weapon).with(any_args)
      game.set_weapon('ROCK')
      expect(game.weapon).to eq 'ROCK'
    end
  end

  describe "#computer_weapon" do
    let(:computer) {double(:computer)}
    it 'should select pass to Computer class' do
      allow(computer).to receive(:set_weapon)
      expect(computer).to receive(:weapon)
      game.computer_weapon(computer)
    end
  end

end
