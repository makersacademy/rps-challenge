require_relative '../../app.rb'

# the marketeer will be presented the choices (rock, paper and scissors)

feature 'Presented with choices' do
  scenario 'see Rock Paper Scissors buttons' do
    fill_in_name
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
end

xfeature 'Make choice' do
  scenario 'player chooses Rock, computer gets Rock' do
    fill_in_name
    click_button 'Rock'
    allow(Kernel).to receive(:rand).and_return 0
    expect(page).to have_content "It's a draw!"
  end
end
