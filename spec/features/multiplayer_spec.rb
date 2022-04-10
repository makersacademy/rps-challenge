require './app'

feature 'Multiplayer' do

  scenario 'Can fill in name for a second player' do
    multiplayer
    expect(page).to have_content 'Michael vs Michael 2'
  end

  scenario 'Player 2 can select their move after Player 1' do
    multiplayer
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content 'Michael 2, what is your move?'
  end

  scenario 'After both players have selected moves, shows winner' do
    multiplayer
    choose('Rock')
    click_button('Submit')
    choose('Paper')
    click_button('Submit')
    expect(page).to have_content 'Congratulations Michael 2, you have won!'
  end
end
