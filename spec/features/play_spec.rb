feature 'Play the game' do
  scenario 'player can click a button to choose rock, paper or scissors' do
    visit '/'
    fill_in 'player_name', with: 'Alessa'
    click_on 'Submit'
    click_on 'Rock'
    expect(page).to have_text "You've chosen Rock!"
  end

  # scenario 'player can click a button to choose rock, paper or scissors' do
  #   visit '/'
  #   fill_in 'player_name', with: 'Alessa'
  #   click_on 'Submit'
  #   click_on 'Paper'
  #   expect(page).to have_text "You've chosen Paper!"
  # end
  #
  # scenario 'player can click a button to choose rock, paper or scissors' do
  #   visit '/'
  #   fill_in 'player_name', with: 'Alessa'
  #   click_on 'Submit'
  #   click_on 'Scissors'
  #   expect(page).to have_text "You've chosen Scissors!"
  # end
end
