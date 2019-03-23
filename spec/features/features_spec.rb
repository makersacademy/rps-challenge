feature 'Player enter name' do
  scenario 'When going to game homepage show submit name form' do
    visit('/')
    expect(page).to have_content 'player 1'
  end

  scenario 'Shows the options to the player Evelyn and the player selects rock' do
    visit('/')
    fill_in 'player1', with: 'Evelyn'
    click_button 'Submit'
    expect(page).to have_content 'Evelyn'
    select 'Rock', from: 'option'
    click_button 'Submit'
    expect(page).to have_content 'Rock'
  end
end
