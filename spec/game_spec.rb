require 'game'
require 'computer'
require 'player'

describe Game do
  subject { described_class.new(computer, player) }
  let(:player) { Player.new('player') }
  let(:computer) { Computer.new('computer') }

  # it "holds two players" do
  #   expect(subject).to include(player, computer)
  # end

  # describe "#weapons" do
  #   it 'returns available weapons' do
  #     expect(subject.weapons).to eq Game::WEAPONS
  #   end
  # end

  describe '#result' do
    # it compares player's and computer's weapon to see outcome
  end


end
