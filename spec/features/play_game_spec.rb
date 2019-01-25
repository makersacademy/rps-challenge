feature 'Feature: Main Game Page' do
  scenario 'Page loads with players name in title' do
    visit('/play_game')
  expect(page).to have_content "DaveVs. Hal"
  end

  scenario "Takes user's move and plays game" do
    visit('/play_game')
      select('Rock', :from => 'input')
      click_button 'Submit'
  expect(page).to have_content "Dave chose Rock"
  end
end
