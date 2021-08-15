require_relative '../../app.rb'

feature 'restart game' do

  scenario 'option to return to homepage at end of game' do
    p1_signs_in_chooses_rock_vs_computer(:paper)
    click_button('Return to Homepage')
    expect(page).to_not have_content("Ed loses, HAL 9000 wins!")
    expect(page).to have_content('Welcome to Rock, Paper, Scissors')
  end

end
