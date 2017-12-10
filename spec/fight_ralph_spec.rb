require 'pry'

feature 'fighting ralph' do
  scenario 'there is a selection of weapon buttons' do
    visit '/'
    click_button "1 Player"
    fill_in 'Challenger', with: "Gerald"
    click_button "Battle!"
    expect(page).to have_content "Rock"
  end
  scenario 'the fight page loads' do
    visit '/'
    click_button "1 Player"
    fill_in 'Challenger', with: "Gerald"
    click_button "Battle!"
    click_button "paper"
    expect(page).to have_content
  end
end
