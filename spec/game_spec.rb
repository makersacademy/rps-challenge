require 'game'
require 'computer'
require 'player'

describe Game do
  subject { described_class.new(computer=Computer.new, player) }
  let(:player) { Player.new('Player') }
  let(:computer) { Computer.new('Computer') }

  it "holds two players" do
    expect(subject.player).to eq(player)
  end

  describe "#weapons" do
    it 'returns available weapons' do
      expect(subject.weapons).to eq Game::WEAPONS
    end
  end

  describe '#result' do
    # it compares player's and computer's weapon to see outcome
  end


end
