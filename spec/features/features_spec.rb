feature 'Player enter name' do
  scenario 'When going to game homepage show submit name form' do
    visit('/')
    expect(page).to have_content 'player 1'
  end

  scenario 'Allow player to enter the name and see it on screen' do
    visit('/')
    fill_in 'player1', with: 'Evelyn'
    click_button 'Submit'
    expect(page).to have_content 'Evelyn'
  end
end
