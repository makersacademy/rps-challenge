require 'spec_helper'

feature 'registering name' do
  scenario 'register and view name' do
    visit '/'
    fill_in 'name', with: 'Ben'
    click_button 'Submit'
    expect(page).to have_content 'Ben' 
  end
end
