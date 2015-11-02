require 'spec_helper'

feature 'computer can randomly chose option' do
  scenario 'computer selects option' do
    allow_any_instance_of(Array).to receive(:sample).and_return("paper")
    visit '/'
    fill_in 'player_name', with: 'He-Man'
    click_button 'Submit'
    click_button 'rock'
    expect(page).to have_content("Computer randomly choses attack method paper")

  end
end
