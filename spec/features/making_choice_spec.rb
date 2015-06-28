require 'spec_helper'

feature 'making a choice' do

  scenario 'after making a choice you see your choice' do
    nicola_chooses_rock
    expect(page).to have_content 'Nicola, you chose Rock'
  end

  scenario 'after making a choice you see your opponent\'s name and choice' do
    nicola_chooses_rock
    expect(page).to have_content 'Computer, chose'
  end

  def nicola_chooses_rock
    visit '/start'
    fill_in('name', with: 'Nicola')
    click_button('Submit')
    choose('rock')
    click_button('Choose')
  end

end
