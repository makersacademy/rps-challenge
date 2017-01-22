require 'spec_helper'
require 'player'

describe Player do
  subject(:game){described_class.new(:rock)}

  # it "presents players with the three options" do
  #   visit('/')
  #   fill_in :player_name, with: 'Jack'
  #   click_button 'Submit'
  #   expect(page).to have_content("Rock")
  #   #  page.should have_selector(:button, 'Paper')
  #   #   page.should have_selector(:button, 'Scissors')
  # end

  describe "#attack_hand" do
    it "returns the value of the players hand" do
      expect(subject.your_hand).to eq :rock
    end
  end

end
