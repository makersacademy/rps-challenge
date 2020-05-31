

feature 'Infrastructure Test' do
 scenario 'Displays welcome message' do
  visit('/')
  expect(page).to have_content('Welcome to Rock Paper Scissors')
 end

 scenario 'Displays player name entered into form' do

 visit('/')
 fill_in('player_name', with: 'Jacko')
 click_button('Play')
 expect(page).to have_content('Jacko vs Computer Player')
 end

 scenario 'Displays the start game button' do
  visit('/')
  fill_in('player_name', with: 'Jacko')
  click_button('Play')
  expect(page).to have_selector(:link_or_button, 'Start Game')

 end

scenario 'Displays the games result' do
 visit('/')
 fill_in('player_name', with: 'Jacko')
 click_button('Play')
 click_button('Start Game')
 
 expect(page).to have_content('Jacko Won')
end
end