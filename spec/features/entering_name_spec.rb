require 'spec_helper'

feature 'Enter name' do
  scenario 'takes user name provided in form and displays it' do
    sign_in_and_start_game
    expect(page).to have_content('Zaphod')
  end
end
