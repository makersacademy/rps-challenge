require 'spec_helper'
require 'helper'


feature 'Starting a two player game' do
  scenario 'homepage should have a two player game option' do
    visit '/'
    expect(page).to have_button 'Two Player Mode'
  end

  scenario 'clicking on two player mode leads to registration page' do
    visit '/'
    click_button 'Two Player Mode'
    expect(current_path).to eq '/register_two_player'
  end

  scenario 'registration page should ask user to fill in name' do
    visit '/'
    click_button 'Two Player Mode'
    expect(page).to have_content 'Please fill in your name:'
  end

  scenario 'should refresh page if name is not filled' do
    visit '/'
    click_button 'Two Player Mode'
    fill_in('name', with: '')
    click_button 'Submit'
    expect(current_path).to eq '/register_two_player'
  end

  scenario 'page should ask player 1 to wait when player 2 has not registered' do
    visit '/'
    click_button 'Two Player Mode'
    fill_in('name', with: 'Leon')
    click_button 'Submit'
    expect(page).to have_content 'Waiting for Player 2 to Register'
  end

  scenario 'Player 1 goes into two player mode gameplay when Player 2 joins' do
    browser(:one) do
      setup_two_player('Leon')
    end

    browser(:two) do
      setup_two_player('Ryan')
    end

    browser(:one) do
      visit '/welcome'
      expect(current_path).to eq '/two_player_gameplay'
    end
  end
end