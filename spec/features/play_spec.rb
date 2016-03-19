require 'spec_helper'

feature '/play' do
  scenario 'player has entered name and made choice, will see his choice' do
   sign_in
   click_button('Rock')
   expect(page).to have_content('Charlie has chosen Rock')
  end

  scenario 'player has entered name and made choice, will see computer\'s choic' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in
    click_button('Rock')
    expect(page).to have_content('The computer has chosen Scissors')
  end
end

