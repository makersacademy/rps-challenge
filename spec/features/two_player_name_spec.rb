feature 'two players can enter their names' do
  scenario 'both players enter their names' do
    visit('/')
    fill_in('player_1_name', with: 'Dec')
    fill_in('player_2_name', with: 'Dan')
    click_button('submit')
    expect(page).to have_content('Player 1: Dec')
    expect(page).to have_content('Player 2: Dan')
  end
end
