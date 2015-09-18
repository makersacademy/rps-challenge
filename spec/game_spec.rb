require 'rspec'
require_relative '../lib/game.rb'

describe Game do

  let(:rock_hand) { double :hand, shape?: :rock }
  let(:paper_hand) { double :hand, shape?: :paper }
  let(:scissors_hand) { double :hand, shape?: :scissors }

  it 'can run a single game of RPS' do
    expect(subject).to respond_to(:run_game).with(2).arguments
  end

  context 'when running a game,' do

    # Don't do this - breaks duck typing.
    # it 'rejects arguments that aren\'t RPS hands.' do
    #   expect { subject.run_game('rock', 44) }.to raise_error 'You must pass two valid RPS hands to play.'
    # end

    it 'detects a tie.' do
      expect(subject.run_game(rock_hand, rock_hand)).to eq :tie
    end

    it 'detects a rock win for hand 1' do
      expect(subject.run_game(rock_hand, scissors_hand)).to eq :hand_1_win
    end

    it 'detects a paper win for hand 2' do
      expect(subject.run_game(rock_hand, paper_hand)).to eq :hand_2_win
    end

    it 'detects a scissors win for hand 1' do
      expect(subject.run_game(scissors_hand, paper_hand)).to eq :hand_1_win
    end

  end

end