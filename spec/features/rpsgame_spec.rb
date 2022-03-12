require_relative 'web_helpers'


feature 'checking the homepage' do
  scenario 'holds the title' do
    visit('/')
    expect(page).to have_content('Welcome to a game of RPS')
  end
  scenario 'asks for a username' do
    visit('/')
    expect(page).to have_content('Insert your name')
    expect(page).to have_field('player_name')
  end
end

feature 'checking that game' do
  scenario 'displays title with player name' do
    sign_in
    expect(page).to have_content "Ready for a round of RPS Nico?"
  end
  scenario 'prompts the player for an answer' do
    sign_in
    expect(page).to have_content "Rock, Paper or Scissors?"
    expect(page).to have_field "answer"
  end
end