require 'game'

describe Game do

  subject(:game) {described_class.new(user)}
  let(:user) { double(:user) }

  it "should be initialized with a player" do
    expect(game.user).to eq user
  end

  describe '#determine_winner' do
    it "should determine when the player has won" do
      allow(user).to receive(:weapon).and_return(:paper)
      srand(2)
      game.determine_winner
      expect(game.result).to eq :win

    end

    it "should determine when God has won" do
      allow(user).to receive(:weapon).and_return(:scissors)
      srand(2)
      game.determine_winner
      expect(game.result).to eq :lose

    end
  end
end
