require 'spec_helper'

feature 'Accept names' do
  scenario 'Submitting names' do
    sign_in_and_player_number
    accept_player_names
    expect(page).to have_content 'John vs Jane'
  end
end

#Feature / scenario is in Capybara
