require 'spec_helper'

feature 'name', :type => feature do
  scenario "user creates a name" do
    sign_in_with_name
    expect(page).to have_text('Anna pick your player!!')
  end
end
feature 'choose character', :type => feature do
  scenario "user is able to choose a character" do
    sign_in_with_name
    click_button "rock"

    expect(page).to have_content 'rock'
  end
end

feature 'restart game', :type => feature do
  scenario 'user can play again' do
    sign_in_with_name
    click_button "rock"
    click_button "home"
    expect(page).to have_content("pick your player")
  end
end
