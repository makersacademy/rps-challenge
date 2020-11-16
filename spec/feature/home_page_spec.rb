require_relative '../../app/rps_web'

feature RPSWeb do
  scenario "Display the page header to the user" do
    visit '/'
    expect(page).to have_content("ROCK PAPER SCISSORS")
  end

  scenario "Display the form text 'Log In to play Rock Paper Scissors!'" do
    visit '/'
    expect(page).to have_content('Log In to play Rock Paper Scissors!')
  end
end