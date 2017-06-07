require 'spec_helper'

feature 'Registering a name' do
  scenario 'Register and Display Name' do
    visit '/'
    fill_in 'name', with: 'Ron'
    click_button 'Submit'
    expect(page).to have_content 'Ron'
  end
end
