feature 'choose' do
  scenario "player can choose among 3 options" do
  visit '/'
  enter_name_and_play
  visit '/thegame'
  click_button 'ROCK'
  expect(page).to have_content("Tuyet vs. Computer")
end
end
