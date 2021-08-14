feature 'tests features for play route' do

  scenario 'Shows the players name on the screen' do
    sign_in_and_play
    expect(page).to have_content('Are you ready to Rock, Paper, Scissors, Tom and Jerry?')
  end

end