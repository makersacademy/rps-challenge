require 'player'

describe Player do

  subject(:player) { Player.new }

  # it 'has options when created' do
  #   expect(player.selection).not_to be_empty
  # end

  # it 'has 3 options to choose from' do
  #   expect(player.selection).to eq ["rock", "paper", "scissors" ]
  # end

  it { is_expected.to respond_to(:select).with(1).argument }

    # describe '#choice' do
    #
    #   it 'can select rock as an option' do
    #     expect(player.select("rock")).to eq "rock"
    #   end
    #
    #   it 'can select paper as an option' do
    #     expect(player.select("paper")).to eq "paper"
    #   end
    #
    #   it 'can select scissors as an option' do
    #     expect(player.select("scissors")).to eq "scissors"
    #   end
    #
    #   it 'raises error if no option is selected' do
    #     expect { player.select("banana") }.to raise_error "You have not made a valid selection"
    #   end
    #
    # end

end
