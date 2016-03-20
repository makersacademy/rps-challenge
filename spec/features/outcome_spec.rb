require 'computer'

feature 'Outcome' do
  subject(:computer) { Computer.new }
  scenario 'shows Rock as choice weapon' do
    sign_in_to_play
    click_button 'Rock'
    expect(page).to have_content('You chose Rock!')
  end

  scenario 'shows Paper as choice weapon' do
    sign_in_to_play
    click_button 'Paper'
    expect(page).to have_content('You chose Paper!')
  end

  scenario 'shows Scissors as choice weapon' do
    sign_in_to_play
    click_button 'Scissors'
    expect(page).to have_content('You chose Scissors!')
  end

  scenario 'shows Lizard as choice weapon' do
    sign_in_to_play
    click_button 'Lizard'
    expect(page).to have_content('You chose Lizard!')
  end

  scenario 'shows Spock as choice weapon' do
    sign_in_to_play
    click_button 'Spock'
    expect(page).to have_content('You chose Spock!')
  end

  scenario 'shows Computer choice weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_to_play
    click_button 'Rock'
    expect(page).to have_content('Computer chose Rock!')
  end

  scenario 'shows game outcome' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_to_play
    click_button 'Rock'
    expect(page).to have_content('You win!')
  end
end
