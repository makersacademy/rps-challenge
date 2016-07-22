require 'spec_helper'

feature 'Enter name' do
  scenario "User inputs their name" do
    sign_in_and_play
    expect(page).to have_content("Hello Jess!")
  end
end
