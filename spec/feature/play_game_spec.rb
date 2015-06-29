require 'spec_helper'

feature 'Start a new game' do

  scenario 'homepage directs to start page' do
    visit '/'
    expect(page).to have_content "Welcome to Rock, Paper, Scissors!"
    click_button('Start')
    visit '/start'
    expect(page).to have_content "Please enter your name:"
  end

  scenario 'presents a form to enter name' do
    visit '/start'
    fill_in('name', with: 'Basil')
    click_button('Submit')
    expect(page).to have_content "Hello Basil, rules for the game are as follows:"
  end

  scenario 'presents an error page if name field is empty when form submitted' do
    visit '/start'
    fill_in('name', with: '')
    click_button('Submit')
    visit '/error'
    expect(page).to have_content "* please fill in your name"
  end

  scenario 'click a link to start game' do
    visit '/start'
    fill_in('name', with: 'Basil')
    click_button('Submit')
    expect(page).to have_content "Hello Basil, rules for the game are as follows:"
    click_button('Start')
    visit '/new_game'
    expect(page).to have_content "Please choose from one of the following options:"
  end

end


feature 'Playing game' do

  # let(:name) { @name = 'Henry' }

  before(:each) do
   $game = nil
  end

  scenario 'I can select rock button' do
    visit '/new_game'
    allow($game).to receive(:computer_choice).and_return "scissors"
    click_button('rock')
    visit '/win'
    expect(page).to have_content "You win!"
  end


  # scenario 'I can select checkbox paper' do
  #   visit 'new_game'
  #   choose('Paper')
  #   click_on('Enter')
  #   expect(extract_results(@name)['option']).to eq("paper")
  # end
  #
  # scenario 'I can select checkbox scissors' do
  #   visit 'new_game'
  #   choose('Scissors')
  #   click_on('Enter')
  #   expect(extract_results(@name)['option']).to eq("scissors")
  # end

end
