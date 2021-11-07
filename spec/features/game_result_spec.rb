feature 'Game result' do
  scenario 'The player can see if they have won' do
    srand(5) 
    enter_name
    click_button('Rock')
    expect(page).to have_content('Doby wins')
  end

  scenario 'The player can see if the game is a draw' do
    srand(5)
    enter_name
    click_button('Scissors')
    expect(page).to have_content('It is a draw')
  end

  scenario 'The player can see if they have lost' do
    srand(5) 
    enter_name
    click_button('Paper')
    expect(page).to have_content('Computer wins')
  end
end