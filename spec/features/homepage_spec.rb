require_relative './web_helpers'

feature 'homepage' do
  scenario 'player can see welcome message' do
    visit('/')
    expect(page).to have_content("Let's play")
    expect(page).to have_content("Enter your name:")
  end

  scenario 'player can enter his or her name' do
    sign_in_and_play
    expect(page).to have_content("Hello, Irina")
  end
end
