require_relative '../../app'

feature 'There is a welcome message' do
  scenario 'players are welcomed to the game' do
    visit '/'
    expect(page).to have_content("WELCOME TO ROCK PAPER SCISSORS")
    expect(page).to have_content("Enter your name to play")
  end
end

feature 'Player can enter their name' do
  scenario 'Name inputed is displayed' do
    visit '/'
    fill_in :name, with: "Ed"
    click_button "Let's Play!!"
    expect(page).to have_content("Hi Ed, Let's play!!! :)")
  end
end
