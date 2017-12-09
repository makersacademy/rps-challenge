require 'pry'

feature 'fighting ralph' do
  scenario 'there is a form to enter weapon' do
    visit '/'
    fill_in 'Challenger', with: "Gerald"
    click_button "Battle!"
    fill_in 'weapon', with: "rock"
  end
  scenario 'there is a button to enter the fight' do
    visit '/'
    fill_in 'Challenger', with: "Gerald"
    click_button "Battle!"
    fill_in 'weapon', with: "rock"
    click_button "Fight Ralph!"
  end
  scenario 'the fight page loads' do
    visit '/'
    fill_in 'Challenger', with: "Gerald"
    click_button "Battle!"
    fill_in 'weapon', with: "rock"
    click_button "Fight Ralph!"
    expect(page).to have_content
  end
end
