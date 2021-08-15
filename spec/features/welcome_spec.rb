feature 'tests features for welcome route' do

  scenario 'Shows the players name on the screen' do
    sign_in_and_play
    expect(page).to have_content("Welcome to the world RPS Championship! Are you ready to play Tom and Jerry!")
  end

end