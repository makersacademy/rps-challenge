require 'spec_helper'
require_relative 'web_helper'

feature 'Result' do

  before(:each) do
    sign_in
  end

  scenario 'test to see users selection of Rock' do
    click_button("Rock")
    expect(page).to have_content "Courtney chose Rock"
  end

  scenario 'test to see users selection of Scissors' do
    click_button("Scissors")
    expect(page).to have_content "Courtney chose Scissors"
  end

  scenario 'test to see users selection of Paper' do
    click_button("Paper")
    expect(page).to have_content "Courtney chose Paper"
  end

  scenario 'shows result of computer selection' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    click_button("Rock")
    expect(page).to have_content "Computer chose Rock"
  end

  scenario 'should test that game status is returned' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    click_button("Rock")
    expect(page).to have_content "Draw"
  end

  scenario 'should test play again button returns to game' do
    click_button("Scissors")
    click_button("Play Again")
    expect(page).to have_content "Welcome Courtney"
  end

  scenario 'should test that player can change' do
    click_button("Paper")
    click_button("New Player")
    expect(page).to have_content "Player's Name"
  end

end
