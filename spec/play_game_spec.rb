require_relative '../app.rb'

# the marketeer will be presented the choices (rock, paper and scissors)

feature 'Presented with choices' do
  scenario 'see Rock Paper Scissors buttons' do
    visit('/')
    fill_in :player_name, with: 'Amy'
    click_button 'Play!'
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end
