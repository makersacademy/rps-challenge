feature 'making a choice between rock, paper and scissors' do

  scenario 'allows a player to choose' do
    visit '/'
    fill_in 'player_1' , with: 'player_1'
    click_button 'Go!'
    click_button 'Rock!'
    expect(page).to have_content 'You chose rock!'
  end

  # scenario 'allows the computer to choose' do
  #
  # end

end
