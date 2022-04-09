require './app.rb'

feature 'RPS choice' do
  scenario 'Can choose between rock, paper or scissors as their intended move' do
    visit('/')
    fill_in 'Player name', with: "Michael"
    click_button 'Submit'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end