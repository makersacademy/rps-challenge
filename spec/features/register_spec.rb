require 'spec_helper.rb'


feature 'fill in name form' do
  scenario 'submits name' do
    visit '/'
    fill_in :your_name, :with => 'Frank'
    click_button 'Submit'
    expect(page).to have_content('Frank')
  end
end

feature 'get result' do
  scenario 'chose rock' do
    visit '/'
    fill_in :your_name, :with => 'Frank'
    click_button 'Submit'
    fill_in :your_move, :with => 'rock'
    click_button 'Submit'
    expect(page).to have_content('you')
  end
end
