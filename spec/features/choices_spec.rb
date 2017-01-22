require 'spec_helper.rb'

# Second User Story
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Playing a game' do
  before do
    visit('/')
    fill_in('name', with: 'Varvara')
    click_button('Submit')
    end

#  the marketeer will be presented the choices (rock, paper and scissors)
  scenario 'Seeing the play options' do
    expect(page). to have_content('Rock')
    expect(page). to have_content('Paper')
    expect(page). to have_content('Scissors')
  end
end
