require 'pry'

feature 'menu' do
  scenario 'Selecting 1P game' do
    visit '/'
    click_button "1 Player"
    expect(page).to have_content "YOU FACE RALPH"
  end
  # scenario 'Selecting 2P game' do
  #   visit '/'
  #   fill_in 'Challenger', with: "Gerald"
  #   click_button "Battle!"
  #   expect(page).to have_content "Welcome, young Gerald!"
  # end
end
