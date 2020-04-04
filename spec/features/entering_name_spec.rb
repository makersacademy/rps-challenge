feature 'name entering form' do
  scenario 'player can enter name in form before the game' do
    visit('/')
    fill_in 'player_1', with: 'Gina'
    click_button('Save')
    expect(page).to have_content 'Gina VS. Computer'
  end
end