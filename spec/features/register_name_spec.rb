require 'spec_helper'


feature 'Player enters and sees their name' do
  scenario 'Player submits name' do
    visit ('/')
    fill_in 'name', with: 'Faduma'
    click_button 'Submit'
    expect(page).to have_content 'Faduma'
  end
end 
