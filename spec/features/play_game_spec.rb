# require 'spec_helper.rb'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'play rps game' do
  before do
    visit('/')
    fill_in :player_name, with:'Kirt'
    click_button ('Submit')
  end
  # the marketeer will be presented the choices (rock, paper and scissors)
  scenario 'user can see the available options' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button ('Scissors')
  end
  # the marketeer can choose one option
  scenario 'user can choose one option' do
    click_button ('Rock')
    expect(page).to have_content("You chose Rock!")
  end
end
