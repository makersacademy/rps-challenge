require_relative '../../lib/game'

feature 'display result' do

  scenario 'shows selected option' do
    sign_in_and_play
    choose('rock')
    click_button 'Play'
    expect(page).to have_content 'You picked rock'
  end

  scenario 'shows computer\'s option' do
    allow_any_instance_of(Game).to receive(:computer_picked).and_return('scissors')
    sign_in_and_play
    choose('rock')
    click_button 'Play'
    expect(page).to have_content 'Computer picked scissors'
  end

  scenario 'declares the winner' do
    allow_any_instance_of(Game).to receive(:computer_picked).and_return('scissors')
    sign_in_and_play
    choose('rock')
    click_button 'Play'
    expect(page).to have_content 'You have won!'
  end

end