feature 'Allowing the user to choose either rock, paper, or scissors' do
  scenario 'Making sure there is a button on the page allowing them to select rock' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
  end
  scenario 'Clicking the button takes the user to a page informing them of their choice and the result of the game' do
    sign_in_and_play
    click_button 'Rock'
    expect(Game.access.player.selection).to eq :rock
  end
end
