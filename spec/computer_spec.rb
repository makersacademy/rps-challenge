require 'computer'
require 'game'

describe Computer do

  describe "#hand_selection" do
    it "can pick rock" do
     Game::HAND_SELECTION.stub(:sample).and_return "rocks"
      expect(subject.hand_selection).to eq "rocks"

    end

    it "can pick paper" do
      Game::HAND_SELECTION.stub(:sample).and_return "paper"
      expect(subject.hand_selection).to eq "paper"
    end

    it "can pick scissors" do
      Game::HAND_SELECTION.stub(:sample).and_return "scissors"
      expect(subject.hand_selection).to eq "scissors"

    end

  end





end