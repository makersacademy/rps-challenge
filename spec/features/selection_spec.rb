require 'web_helpers'

feature 'Playing the Game' do
  scenario 'making a selection' do
    enter_name
    choose_selection("scissors")
    expect(page).to have_content("You Chose Scissors")
  end
end