require './model/auto.rb'

feature 'Game Results' do
  scenario 'checks if player wins by having Paper chosen against Rock' do
    allow_any_instance_of(Auto).to receive(:random_pick).and_return('Rock')
    visit '/'
    fill_in('name', with: 'Yoyo')
    click_button 'Register'
    click_button 'Lets Play'
    find("option[value='Paper']").select_option
    click_button 'Confirm'
    expect(page).to have_content "You WON!"
  end
end

feature 'Game Results' do
  scenario 'checks if player loses by having Scissors chosen against Rock' do
    allow_any_instance_of(Auto).to receive(:random_pick).and_return('Rock')
    visit '/'
    fill_in('name', with: 'Yoyo')
    click_button 'Register'
    click_button 'Lets Play'
    find("option[value='Scissors']").select_option
    click_button 'Confirm'
    expect(page).to have_content "You Lost!"
  end
end

