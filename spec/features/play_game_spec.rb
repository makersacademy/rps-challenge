feature 'Playing the game' do

  scenario 'The player can select rock, paper or scissors weapon' do
    sign_in_and_play
    fill_in :weapon, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'You chose rock'
  end

  scenario 'The player cannot select weapons other than rock paper or scissor' do
    sign_in_and_play
    fill_in :weapon, with: 'pineapple'
    click_button 'Submit'
    expect(page).to have_content 'Sorry, pineapple is not a valid weapon. Please go back and enter rock, paper or scissors.'
end
end
