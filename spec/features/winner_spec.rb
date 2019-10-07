require './lib/computer.rb'

feature 'Game Results' do
  scenario 'checks if player wins by having Paper chosen against Rock' do
    allow_any_instance_of(Computer).to receive(:random_move).and_return('Rock')
    sign_in_and_play
    click_button 'Lets Play'
    find("option[value='Paper']").select_option
    click_button 'Confirm'
    expect(page).to have_content "You WON!"
  end
end

feature 'Game Results' do
  scenario 'checks if player loses by having Scissors chosen against Rock' do
    allow_any_instance_of(Computer).to receive(:random_move).and_return('Rock')
    sign_in_and_play
    click_button 'Lets Play'
    find("option[value='Scissors']").select_option
    click_button 'Confirm'
    expect(page).to have_content "You Lost!"
  end
end

feature 'Game Results' do
  scenario "checks if it's a draw for having Rock chosen against Rock" do
    allow_any_instance_of(Computer).to receive(:random_move).and_return('Rock')
    sign_in_and_play
    click_button 'Lets Play'
    find("option[value='Rock']").select_option
    click_button 'Confirm'
    expect(page).to have_content "It's a draw!"
  end
end
