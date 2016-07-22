require 'spec_helper'

feature 'Options' do
  scenario "User inputs their name" do
    sign_in_and_play
    expect(page).to have_content("Jess vs Computer!!")
  end
end
