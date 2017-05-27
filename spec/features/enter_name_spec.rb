feature 'player can enter name' do
  scenario 'player can see name' do
    visit('/')
    fill_in('player1', with: 'Ian')
    click_button('Submit')
  end
end
