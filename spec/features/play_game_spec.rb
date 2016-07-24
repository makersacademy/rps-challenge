require 'spec_helper'

feature 'can play the game' do
  scenario 'should see options of weapons' do

    visit '/'
    fill_in 'name', with: 'Prashant'
    click_button 'Submit'

    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end

end
