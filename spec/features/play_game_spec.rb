require_relative '../../app.rb'

feature 'Select options' do

  scenario 'Player1 selects rock' do
    sign_in_and_play_single_player
    click_button 'rock'
    expect(page).to have_content("The results are:")
  end

  scenario 'Player1 selects paper' do
    sign_in_and_play_single_player
    click_button 'paper'
    expect(page).to have_content("The results are:")
  end

  scenario 'Player1 selects scissors' do
    sign_in_and_play_single_player
    click_button 'scissors'
    expect(page).to have_content("The results are:")
  end

end
