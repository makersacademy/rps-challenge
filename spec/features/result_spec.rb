require 'spec_helper'

feature 'result_spec: Display results' do

  before do
    single_player_sign_in
    allow(Kernel).to receive(:rand).and_return(1)
  end

  scenario '1. display player one\'s choice' do
    click_button("Rock")
    expect(page).to have_content('Shane\'s weapon: Rock')
  end

  scenario '2. display computer\'s choice' do
    click_button("Rock")
    expect(page).to have_content('Computer\'s weapon: Paper')
  end

  scenario '3. display the winner' do
    click_button("Rock")
    expect(page).to have_content('Computer wins!')
  end

  scenario '4. display round as a tie' do
    click_button('Paper')
    expect(page).to have_content('It\'s a tie. Nobody wins.')
  end
end
