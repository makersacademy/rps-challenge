require 'spec_helper'

feature '/names' do
  scenario 'player\'s name will appear after it has been entered.' do
    visit('/')
    fill_in('name', with: 'Charlie') 
    click_button('Submit')
    expect(page).to have_content('Welcome to the game Charlie')
  end
end
