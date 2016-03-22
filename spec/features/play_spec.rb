require 'spec_helper'

feature '/play' do
  scenario 'player1 has entered name and made choice, will see their choice' do
   sign_in
   click_button('Rock')
   click_button('Scissors')
   expect(page).to have_content('Charlie has chosen rock')
  end

  scenario 'player2 has entered name and made choice after player_1, will announce player_2\'s choice' do
    sign_in
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content('Roxanne has chosen scissors')
  end
end

