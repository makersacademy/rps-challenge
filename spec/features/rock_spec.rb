require './app.rb'
require_relative 'web_helpers'

feature 'click rock' do
  scenario "You're able to click button rock" do
    sign_in
    expect(page).to have_button "Rock"
  end

  scenario "You're get a confirmation of attack button rock" do
    sign_in
    click_button "Rock"
    expect(page).to have_content "You threw a rock"
  end

  scenario "there is a button play again" do
    sign_in
    click_button "Rock"
    expect(page).to have_button "Play again"
  end

  scenario "you can play again" do
    sign_in
    click_button "Rock"
    click_button "Play again"
    expect(page).to have_button "Rock"
  end

end
