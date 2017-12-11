require 'pry'

feature 'menu' do
  scenario 'Selecting 1P game' do
    visit '/'
    click_button "1 Player"
    expect(page).to have_content "YOU FACE RALPH"
  end
  scenario 'Selecting 2P game' do
    visit '/'
    click_button "2 Player"
    expect(page).to have_content "DEATHMATCH!!"
  end
end
