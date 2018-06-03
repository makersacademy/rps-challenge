# 1. I would like to initiate a game of rock paper scissors

feature 'Initiate' do
  scenario 'start game' do
    sign_in_and_play
    click_button 'Start game'
    expect(page).to have_content 'time to choose'
  end

  scenario 'start second game' do
    sign_in_and_play
    click_button 'Start game'
    click_button 'Rock'
    click_button 'Start another game'
    expect(page).to have_content 'time to choose'
  end

end
