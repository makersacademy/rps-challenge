require 'spec_helper'
require '././app.rb'
RSpec.feature 'lost', :type => :feature do
    # let(:choice) {double "Scissors"}
  scenario 'the player has lost' do
      sign_in_and_play
      click_button 'Paper'

      # Rps.instance_variable_set("@choice", "Scissors")
      # Game.new.stub(:choice).and_return(["Scissors"]  )
     expect(page).to have_text "Bob has played Paper"
  end
end
