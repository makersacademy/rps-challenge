feature 'Playing the game' do

  scenario 'The player can select rock, paper or scissors weapon' do
    sign_in_and_play
    fill_in :weapon, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'You chose rock'
  end


end
