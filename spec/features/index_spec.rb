feature 'Feature: Main Index Page' do
scenario 'Page loads and asks users name' do
  visit('/')
  expect(page).to have_content "What's your name?"
end

scenario 'Player is able to provide player name' do
  visit('/')
  fill_in :player_name, with: 'Dave'
  click_button 'Submit'
  expect(page).to have_content "thanks Dave"
end

end
