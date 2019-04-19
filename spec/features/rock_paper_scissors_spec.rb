require_relative './web_helpers'

feature 'Homepage' do
  scenario 'Show homepage of rock, paper, scissors' do
    visit '/'
    expect(page).to have_content 'Rock, Paper, Scissors'
  end

  scenario 'Add player name' do
    visit '/'
    expect(page).to have_content 'Name'
  end
end

feature 'New game' do
  scenario 'Player is asked to choose R, P or S' do
    sign_in_and_play
    expect(page).to have_content 'Choose Rock, Paper or Scissors'
  end

  scenario 'Player can choose choice' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end

feature 'During game' do
  scenario 'Selecting rock' do
    sign_in_and_play
    click_button 'Rock'
	  expect(page).to have_content 'Rock selected'
  end

  scenario 'Selecting Paper' do
    sign_in_and_play
    click_button 'Paper'
	  expect(page).to have_content 'Paper selected'
  end

  scenario 'Selecting scissors' do
    sign_in_and_play
    click_button 'Scissors'
	  expect(page).to have_content 'Scissors selected'
  end
end
