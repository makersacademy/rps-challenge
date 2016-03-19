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
  # 
  # scenario 'shows Computer choice weapon' do
  #   sign_in_to_play
  #   click_button 'Rock'
  #   allow(computer).to receive(:choice).and_return('Rock')
  #   expect(page).to have_content('The computer chose Rock!')
  # end
end
