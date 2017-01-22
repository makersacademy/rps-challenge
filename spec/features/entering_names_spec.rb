require 'spec_helper'

feature 'Name input' do
  scenario 'Enter name before playing' do
    sign_in
    expect(page).to have_content 'Get ready to play, Sam!'
  end
end

feature "playing the game" do
  scenario 'selecting Rock' do
    sign_in
    expect(page).to have_button 'Rock'
  end
  scenario 'selecting Paper' do
    sign_in
    expect(page).to have_button 'Paper'
  end
  scenario 'selecting Scissors' do
    sign_in
    expect(page).to have_button 'Scissors'
  end
  scenario 'confirmation of selection, rock' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'You selected Rock'
  end
  scenario 'confirmation of selection, Paper' do
    sign_in
    click_button 'Paper'
    expect(page).to have_content 'You selected Paper'
  end
  scenario 'confirmation of selection, Scissors' do
    sign_in
    click_button 'Scissors'
    expect(page).to have_content 'You selected Scissors'
  end
end

feature 'generating opponents choice' do
  scenario 'computer makes a selection' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Opponent selects Scissors'
  end
end
