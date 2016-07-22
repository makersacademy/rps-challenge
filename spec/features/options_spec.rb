require 'spec_helper'

feature 'Enter name' do
  scenario "User is given options" do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
  end
end
