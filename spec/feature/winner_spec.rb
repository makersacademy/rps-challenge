require 'spec_helper'

feature ' it tells you who won' do
  before(:each) do
    visit '/'
    fill_in 'name', with: 'Bob'
    click_button 'Submit'
    srand(3) #seed the random computer choice to :lizard
    visit '/new_game'
    visit '/play'
  end

  scenario 'draw' do
    click_button 'lizard'
    expect(page).to have_content("Draw")
  end

  scenario 'computer wins' do
    click_button 'spock'
    expect(page).to have_content("Computer wins")
  end

  scenario 'player wins' do
    click_button 'rock'
    expect(page).to have_content("Bob wins")
  end
end
