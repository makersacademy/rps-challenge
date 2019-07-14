feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to RPS'
  end
end


feature 'Enable player to enter name' do
  scenario 'testing name input from form' do
    visit('/')
    fill_in 'name', with: 'Bob'
    click_button 'Go'
    expect(page).to have_content "Hello Bob! Please enter a move"
  end

end

feature 'Enable player to enter a move' do
  scenario 'testing move input from form' do
    visit('/')
    fill_in 'name', with: 'Bob'
    click_button 'Go'
    fill_in 'move', with: 'rock'
    click_button 'Play!'
    expect(page).to have_content "Your move was: rock"

  end
end

  feature 'raises error if not valid entry' do
    scenario 'player enter invalid entry' do
      visit('/')
      fill_in 'name', with: 'Bob'
      click_button 'Go'
      fill_in 'move', with: 'Rok'
      click_button 'Play!'
      expect(page).to have_content "sorry, invalid move given"

end
end
#
#   feature 'Tells the user theyve lost if they loose a game' do
#   scenario 'player looses against computer' do
#
#     visit('/')
#     fill_in 'name', with: 'Bob'
#     click_button 'Go'
#     fill_in 'move', with: 'Rock'
#     srand = 3
#     click_button 'Play!'
#
#
#   end
# end
