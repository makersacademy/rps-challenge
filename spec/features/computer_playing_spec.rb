feature 'computer makes a move' do
  scenario 'the player made a move a computer made a move' do
    srand(678_909)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("You went with Rock")
    expect(page).to have_content("Computer went with Rock")
  end
end
