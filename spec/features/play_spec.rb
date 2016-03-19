require 'spec_helper'

feature '/play' do
  scenario 'player has entered name and made his choice, will see his choice' do
   sign_in
   click_button('Rock')
   expect(page).to have_content('Charlie has chosen Rock')
  end
end

