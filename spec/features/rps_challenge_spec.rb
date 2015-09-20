require 'spec_helper'

feature 'enter username' do
  scenario 'asked to fill out username in a field' do
    visit '/'
    click_link 'RPS Challenge'
    expect(page).to have_field 'username'
  end
end

feature 'choose opponent' do
  before do
    $usernames = []
    $invites = {}
    $games = {}
  end

  scenario 'asked to choose an opponent after entering username' do
    visit 'username'
    fill_in 'username', with: 'username1'
    click_button 'Enter'
    expect(page).to have_content 'Hi username1,'
  end

  scenario 'asked to wait for another player when no one else is online' do
    visit 'username'
    fill_in 'username', with: 'username1'
    click_button 'Enter'
    within '#usernames' do
      expect(page).to have_content 'No one else is online. Please wait ...'
    end
  end

  scenario 'shown the list of players who are currently online' do
    visit 'username'
    fill_in 'username', with: 'username1'
    click_button 'Enter'
    visit 'username'
    fill_in 'username', with: 'username2'
    click_button 'Enter'
    within '#usernames' do
      expect(page).to have_content 'Please choose an opponent from those online as shown below:'
      expect(page).to have_content 'username1'
    end
  end

  scenario 'asked to wait for chosen opponent to accept challenge' do
    visit 'username'
    fill_in 'username', with: 'username1'
    click_button 'Enter'
    visit 'username'
    fill_in 'username', with: 'username2'
    click_button 'Enter'
    within '#usernames' do
      click_link 'username1'
    end
    expect(page).to have_content 'Waiting for acceptance ...'
  end

  scenario 'receives an invite to play' do
    visit 'username'
    fill_in 'username', with: 'username1'
    $invites['username1'] = 'username2'
    click_button 'Enter'
    expect(page).to have_content 'username2 has invited you to play a game. Would you like to accept the challenge?'
  end
end

feature 'start a game' do
  before do
    $usernames = []
    $invites = {}
    $games = {}
  end

  scenario 'asked to choose either Rock, Scissors or Paper' do
    visit 'username'
    fill_in 'username', with: 'username1'
    $invites['username1'] = 'username2'
    click_button 'Enter'
    click_button 'Accept'
    expect(page).to have_content 'Please choose one of the three options:'
  end

  scenario 'game starts after invite has been accepted' do
    visit 'username'
    fill_in 'username', with: 'username1'
    click_button 'Enter'
    visit 'username'
    fill_in 'username', with: 'username2'
    click_button 'Enter'
    $games['username1' => 'username2'] = :game
    within '#usernames' do
      click_link 'username1'
    end
    expect(page).to have_content 'Please choose one of the three options:'
  end
end

feature 'play' do
  scenario 'compares choices from 2 players and determine winner' do
    visit '/start_game'
    fill_in 'choice', with: 'r'
    click_button 'Submit'
    visit '/start_game'
    fill_in 'choice', with: 'r'
    click_button 'Submit'
    expect(page).to have_content 'Draw!'
  end
end
