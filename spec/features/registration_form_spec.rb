feature 'Enering players name' do
  scenario 'Button works' do
  visit '/'
  fill_in('player_name', with: 'Patryk')
  click_button('Start Game')
  expect(page).to have_content 'Hi Patryk, welcome to the game !'
  end
end