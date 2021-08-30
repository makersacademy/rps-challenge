require 'spec_helper.rb'
#
#
feature 'Playing a game' do
  before '' do
    visit '/'
    fill_in 'name', with: 'Anastasis'
    click_button 'Submit'
  end
  it 'See  all three options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

end
