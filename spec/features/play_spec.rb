require 'spec_helper'

feature '/play' do
  scenario 'player has entered name and made choice, will see their choice' do
   sign_in
   click_button('Rock')
   click_button('Scissors')
   expect(page).to have_content('Charlie has chosen Rock')
  end

  scenario 'player has entered name and made choice after player_1, will see computer\'s choic' do
    sign_in
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content('Roxanne has chosen Scissors')
  end
end

