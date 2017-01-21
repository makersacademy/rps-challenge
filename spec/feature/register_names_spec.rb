require 'spec_helper'

feature 'registering name' do
  scenario 'register name and see on screen' do
    visit'/'
    fill_in 'name', with: 'Gus'
    click_button 'Submit'
    expect(page).to have_content 'Gus'
  end
end
