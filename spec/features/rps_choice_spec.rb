require './app.rb'

feature 'RPS choice' do
  scenario 'Can choose between rock, paper or scissors as their intended move' do
    visit('/')
    fill_in 'Player name', with: "Michael"
    click_button 'Submit'
    expect(page).to have_unchecked_field('Rock')
    expect(page).to have_unchecked_field('Paper')
    expect(page).to have_unchecked_field('Scissors')
  end
end