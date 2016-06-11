require 'spec_helper'

feature 'registering name' do
  scenario 'see name after registering' do
    visit('/')
    fill_in('name', with: 'Marlon')
    click_button('Submit')
    expect(page).to have_content('Marlon')
  end
end
