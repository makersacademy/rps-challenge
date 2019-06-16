require 'spec_helper'

feature 'registering name' do
  scenario 'register and see my name' do
    visit '/'
    fill_in :name, with: 'Jane'
    click_button 'Submit'
    expect(page).to have_content 'Jane'
  end
end
