require 'spec_helper'
require '././app.rb'
RSpec.feature 'lost', :type => :feature do
    let(:choice) {double "Scissors"}
  scenario 'the player has lost' do
      sign_in_and_play
      click_button 'Rock'
      # Rps.instance_variable_set("@choice", "Scissors")
      # Game.new.stub(:choice).and_return(["Scissors"]  )
     expect(page).to have_text "You've won!"
  end
end
