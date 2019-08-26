feature 'choose' do
  scenario "player can choose among 3 options" do
  visit '/thegame'
  click_button 'Rock'
  expect(page).to have_content("vs.")
end
end
