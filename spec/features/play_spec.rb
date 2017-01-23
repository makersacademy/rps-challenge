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
    expect(page). to have_button('Rock')
    expect(page). to have_button('Paper')
    expect(page). to have_button('Scissors')
  end

#  the marketeer can choose one option
  scenario 'Choosing an instrument to play with' do
    click_button 'Paper'
    expect(page).to have_content("Your choice is Paper")
  end


# the game will choose an option
  scenario 'Game chooses an option' do
    click_button 'Paper'
    message = find(:css, "#computer").text
    expect(options_messages).to include message
  end

# the game will choose a random option
  scenario 'Game chooses a random option' do
    allow_any_instance_of(Computer).to receive(:instrument).and_return('Rock')
    click_button 'Paper'
    expect(page).to have_content("Computer's choice is Rock!")
  end


  # using a helper
  def options_messages
    options = [:rock, :paper, :scissors]
    options.map do |instrument|
      p "Computer's choice is #{instrument.to_s.capitalize}!"
    end
  end

end
