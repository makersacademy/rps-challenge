require 'spec_helper'

feature 'Weapon choice' do

  before(:each) do
    enter_name
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
  end

  scenario 'player chooses rock' do
    click_button 'Rock'
    expect(page).to have_content 'Abigail chooses Rock!'
    expect(page).to have_content 'Computer chooses Rock!'
  end

  scenario 'player chooses paper' do
    click_button 'Paper'
    expect(page).to have_content 'Abigail chooses Paper!'
    expect(page).to have_content 'Computer chooses Rock!'
  end

  scenario 'player chooses scissors' do
    click_button 'Scissors'
    expect(page).to have_content 'Abigail chooses Scissors!'
    expect(page).to have_content 'Computer chooses Rock!'
  end

end
