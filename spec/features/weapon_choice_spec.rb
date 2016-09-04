require 'spec_helper'

feature 'Weapon choice' do

  before(:each) do
    enter_name
  end

  scenario 'player chooses rock' do
    click_button 'Rock'
    expect(page).to have_content 'Abigail chooses Rock!'
  end

  scenario 'player chooses paper' do
    click_button 'Paper'
    expect(page).to have_content 'Abigail chooses Paper!'
  end

  scenario 'player chooses scissors' do
    click_button 'Scissors'
    expect(page).to have_content 'Abigail chooses Scissors!'
  end

end
