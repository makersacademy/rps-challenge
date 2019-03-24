feature 'Player enter name' do
  scenario 'When going to game homepage show submit name form' do
    visit('/')
    expect(page).to have_content 'player 1'
  end

  scenario 'Player selects one option and a winner is declared' do
    visit('/')
    fill_in 'player1', with: 'Evelyn'
    click_button 'Submit'
    expect(page).to have_content 'Evelyn'
    select 'Scissors', from: 'option'
    click_button 'Submit'
    expect(page).to have_content 'Evelyn has selected scissors'
  end
end
