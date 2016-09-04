require 'spec_helper'

feature 'Weapon choice' do

  before(:each) do
    enter_name
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
  end

  scenario 'player chooses rock' do
    click_button 'rock'
    expect(page).to have_content 'Abigail chooses rock!'
    expect(page).to have_content 'Computer chooses rock!'
  end

  scenario 'player chooses paper' do
    click_button 'paper'
    expect(page).to have_content 'Abigail chooses paper!'
    expect(page).to have_content 'Computer chooses rock!'
  end

  scenario 'player chooses scissors' do
    click_button 'scissors'
    expect(page).to have_content 'Abigail chooses scissors!'
    expect(page).to have_content 'Computer chooses rock!'
  end

end
