# frozen_string_literal: true

feature 'logout' do
  scenario 'user sign out' do
    sigin_in_as_sam
    visit '/play'
    click_button 'Log out'
  end
end
