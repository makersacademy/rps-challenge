require 'spec_helper'

feature 'starting a round of RPS' do
  scenario 'start game with options' do
    sign_in_and_play
    expect(page).to have_button('Rocking Rock')
    expect(page).to have_button('Powerful Paper')
    expect(page).to have_button('Slicing Scissors')
  end

  scenario 'select weapon option' do
    sign_in_and_play
    click_button 'Rocking Rock'
    expect(page).to have_content('You chose Rocking Rock!')
  end

  scenario 'RPS-A-TRON 5000 chooses a random weapon' do
    srand(12453734)
    sign_in_and_play
    click_button 'Slicing Scissors'
    expect(page).to have_content('Slicing Scissors' && 'Rocking Rock' && 'Powerful Paper')
  end

  scenario 'player wins' do
    srand(12453734)
    sign_in_and_play
    click_button 'Slicing Scissors'
    expect(page).to have_content('Congratulations..You bested RPS-A-TRON 5000..Wait for RPS-A-TRON 5001!')
  end

  scenario 'player loses' do
    srand(12453734)
    sign_in_and_play
    click_button 'Rocking Rock'
    expect(page).to have_content('HA! Naturally you lsot to RPS-A-TRON 5000')
  end

  scenario 'player draws' do
    srand(12453734)
    sign_in_and_play
    click_button 'Powerful Paper'
    expect(page).to have_content('I-i-imposible you drew with RPS-A-TRON 5000?!?')
  end

end
