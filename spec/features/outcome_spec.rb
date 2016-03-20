require 'computer'

feature 'Outcome' do
  subject(:computer) { Computer.new }
  scenario 'shows Rock as choice weapon' do
    sign_in_to_play
    click_button 'Rock'
    expect(page).to have_content('You chose rock!')
  end

  scenario 'shows Paper as choice weapon' do
    sign_in_to_play
    click_button 'Paper'
    expect(page).to have_content('You chose paper!')
  end

  scenario 'shows Scissors as choice weapon' do
    sign_in_to_play
    click_button 'Scissors'
    expect(page).to have_content('You chose scissors!')
  end

  scenario 'shows Lizard as choice weapon' do
    sign_in_to_play
    click_button 'Lizard'
    expect(page).to have_content('You chose lizard!')
  end

  scenario 'shows Spock as choice weapon' do
    sign_in_to_play
    click_button 'Spock'
    expect(page).to have_content('You chose spock!')
  end

  scenario 'shows Computer choice weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_to_play
    click_button 'Rock'
    expect(page).to have_content('The computer chose rock!')
  end

  scenario 'shows game outcome' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_to_play
    click_button 'Rock'
    expect(page).to have_content('You win!')
  end
end
