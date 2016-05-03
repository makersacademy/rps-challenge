require 'spec_helper'

feature 'Enter names'  do

  scenario 'enter names' do
    visit ('/')
    fill_in 'name', with: 'Rich'
    click_button 'Submit'
    expect(page).to have_content 'Rich'
  end


end
