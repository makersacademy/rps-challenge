require 'capybara'

feature 'enter names' do
  scenario 'player enters their name' do
    sign_in_and_play

    expect(page).to have_text("Welcome Boris!")
  end
end
