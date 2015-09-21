require 'spec_helper'

feature 'Starting a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_link "New Game"
  end

  scenario 'Loop until name given' do
    visit '/name'
    click_button 'Start'
    expect(page).to have_content "What's your name"
  end

  scenario 'Start game if name given' do
    visit '/name'
    fill_in 'name', with: 'Chris'
    click_button 'Start'
    expect(page).to have_content "Welcome Chris, GAME ON"
  end
end

feature 'Gameplay' do

  before do
    srand(1)
  end

  scenario 'Gives options when game starts' do
    visit '/name'
    fill_in 'name', with: 'Chris'
    click_button 'Start'
    expect(page).to have_button "Rock"
  end

  scenario 'Goes to winner page when won' do
    visit '/name'
    fill_in 'name', with: 'Chris'
    click_button 'Start'
    click_button 'scissors'
    expect(page).to have_content 'wins!'
  end

  scenario 'Goes to loser page when lost' do
    visit '/name'
    fill_in 'name', with: 'Chris'
    click_button 'Start'
    click_button 'rock'
    expect(page).to have_content 'Loser!'
  end

  scenario 'Goes to draw page when drawn' do
    visit '/name'
    fill_in 'name', with: 'Chris'
    click_button 'Start'
    click_button 'paper'
    expect(page).to have_content 'Draw!'
  end
end
