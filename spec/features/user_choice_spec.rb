feature 'User enters a choice' do

  scenario 'rock, paper or scissors' do
    # setup
    visit '/game'
    # exercise
    fill_in 'player_input', with: 'Rock'
    click_on 'Play'
    # verify
    expect(page).to have_content('You chose: Rock')
  end

end
