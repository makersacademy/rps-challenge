require "capybara/rspec"
require_relative "../../lib/app"

# feature 'Testing infrastructure' do
#   scenario 'can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working'
#   end
# end

feature 'Enter names' do
  scenario 'Players can enter their names' do
  sign_in_and_play
    expect(page).to have_content 'Bob'
  end
end

feature 'Pick rock paper or scissors' do
  scenario 'Players can enter their choice' do
    choose_pick
    expect(page).to have_content 'rock'
  end
end

feature 'The computer picks' do
  scenario '#rand_choice returns the comp_choice' do
    choose_pick
    click_button 'Ok! Now the computer picks'
    expect(page).to have_content('rock')
  end
end

feature 'The winnder is decided' do
  scenario 'the winner is presented' do
    choose_pick
    click_button 'Ok! Now the computer picks'
    click_button 'See who wins'
    expect(page).to have_content("It is a draw!")
  end
end
