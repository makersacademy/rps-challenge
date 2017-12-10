require 'pry'

feature 'name entry' do
  scenario 'Submitting 1 player names' do
    visit '/'
    click_button "1 Player"
    fill_in 'Challenger', with: "Gerald"
    click_button "Battle!"
    expect(page).to have_content "Welcome, young Gerald!"
  end
end
