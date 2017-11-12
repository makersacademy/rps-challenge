feature 'Allowing the user to choose either rock, paper, or scissors' do
  scenario 'Making sure there is a button on the page allowing them to select rock' do
    visit '/'
    fill_in 'name', with: 'Peter'
    click_button 'Let\'s play!'
    expect(page).to have_link 'Rock'
  end
  scenario 'Clicking the button takes the user to a page informing them of their choice and the result of the game' do
    visit '/'
    fill_in 'name', with: 'Peter'
    click_button 'Let\'s play!'
    click_link 'Rock'
    expect(Game.access.player.selection).to eq :rock
  end
end
