require 'spec_helper'

feature 'Weapon choice' do

  scenario 'player chooses rock' do
    enter_name
    click_button 'Rock'
    expect(page).to have_content 'Abigail chooses rock!'
  end

  # scenario 'player chooses paper' do
  #   enter_name
  #   click_button 'Paper'
  #   expect(page).to have_content 'Abigail chooses paper!'
  # end
  #
  # scenario 'player chooses scissors' do
  #   enter_name
  #   click_button 'Scissors'
  #   expect(page).to have_content 'Abigail chooses scissors!'
  # end

end
