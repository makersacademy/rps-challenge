require './spec/features/web_helper'

feature 'Playing RPS' do

  before do
    enter_name
    srand(10)
  end

  scenario 'expect Rock/Paper/Scissors buttons to be on page' do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
  scenario 'Rock to be displayed if user chooses Rock' do
    click_button 'Rock'
    expect(page).to have_content "Rock"
  end
  scenario 'Scissors to be displayed if user chooses scissors' do
    click_button 'Scissors'
    expect(page).to have_content "Scissors"
  end
  scenario 'Paper to be displayed if user chooses paper' do
    click_button 'Paper'
    expect(page).to have_content "Paper"
  end
  scenario 'Winning' do
    click_button "Rock"
    expect(page).to have_content "You win!"
  end
  scenario 'Losing' do
    click_button "Paper"
    expect(page).to have_content "You lose"
  end
  scenario 'Drawing' do
    click_button "Lizard"
    expect(page).to have_content "Draw"
  end   
end
