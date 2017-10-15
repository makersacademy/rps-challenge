require_relative '../../app.rb'

feature 'Select options' do

  scenario 'Player1 selects rock' do
    visit('/play_game')
    click_button 'rock'
    expect(page).to have_content("The results are:")
  end

  # scenario 'Player1 selects paper' do
  #   visit('/game_intro')
  #   click_button 'paper'
  #   expect(page).to have_content("Draw!")
  # end
  #
  # scenario 'Player1 selects scissors' do
  #   visit('/game_intro')
  #   click_button 'scissors'
  #   expect(page).to have_content("The winner is #{:}")
  # end


end
