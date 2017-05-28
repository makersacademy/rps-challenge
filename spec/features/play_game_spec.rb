feature 'Play single player game' do
  scenario 'if no 2nd player added' do
    visit('/')
    fill_in('player1', with: 'Ian')
    click_button('Paper') || click_button('Rock') || click_button('Scissors')
    click_button ('Play')
  end
end
