require './app'

feature RockPaperScissors do
  scenario 'Index page loads' do
    visit '/'
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'Entering name and clicking play' do
    sign_in_and_play
    expect(page).to have_content "Choose your Weapon"
  end
end
