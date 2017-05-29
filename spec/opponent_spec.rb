require 'opponent'

describe Opponent do
  subject(:opponent) { described_class.new }

  describe '#opponent_choice' do
    # it 'allows the opponent to choose Rock randomly' do
    #   allow(opponent).to receive(:random_pick).and_return 1
    #   expect(opponent.choose_hand).to eq :Rock
    # end
    #
    # it 'allows the opponent to choose Paper randomly' do
    #   allow(opponent).to receive(:random_pick).and_return 2
    #   expect(opponent.choose_hand).to eq :Paper
    # end
    #
    # it 'allows the opponent to choose Scissors randomly' do
    #   allow(opponent).to receive(:random_pick).and_return 3
    #   expect(opponent.choose_hand).to eq :Scissors
    # end
    #
    # it 'allows the opponent to choose Lizard randomly' do
    #   allow(opponent).to receive(:random_pick).and_return 4
    #   expect(opponent.choose_hand).to eq :Lizard
    # end
    #
    # it 'allows the opponent to choose Spock randomly' do
    #   allow(opponent).to receive(:random_pick).and_return 5
    #   expect(opponent.choose_hand).to eq :Spock
    # end

    it 'allows the opponent to choose randomly' do
      expect(opponent.weapons).to include(opponent.choose_hand)
    end
  end
end
