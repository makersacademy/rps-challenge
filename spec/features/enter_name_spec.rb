require 'spec_helper'
require 'capybara'

feature '#Starts the game' do
  scenario 'with name param' do
      allow_any_instance_of(Array).to receive(:sample).and_return('paper')
      sign_in_and_play
      expect(page).to have_text("Murilo VS. Computer")
      expect(page).to have_text("Murilo LOST!!!")
  end
end
