require_relative '../../app'

feature 'home' do
  scenario 'returns the game name' do
    visit '/'
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
end
