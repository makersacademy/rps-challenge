RSpec.feature 'back to main menu', type: :feature do
  scenario 'when a player wants to return to the menu' do
    enter_name_and_play
    click_on 'SCISSORS'
    click_on 'RETURN TO MENU'
    expect(page).to have_content "Rock\nPaper\nScissors\nLizard\nSpock"
  end
end
