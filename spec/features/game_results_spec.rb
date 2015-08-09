require 'spec_helper'

describe RoshamboWeb do

  feature 'displays the game result' do
    let(:game) {double 'game'}
    scenario 'player wins' do
      visit '/welcome'
      select 'Rock', :from => 'move'
      click_button 'Play'
      #unable to stub at the moment due to #computer_beats_player? construction in roshambo module
      #allow(subject).to receive(:won).and_return(true)
      expect(page).to have_content 'You win!'
    end
  end

end