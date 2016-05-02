feature 'Accepts player name' do

  scenario 'Enter name' do
    enter_player_name
    expect(page).to have_content('Macey Forever')
  end

end

feature 'Accepts a player choice' do

  scenario 'Has choices' do
    enter_player_name
    expect(page).to have_content('Rock')
    expect(page).to have_content('Scissors')
    expect(page).to have_content('Paper')
  end

  scenario 'Enters rock' do
    enter_player_name
    page.choose('rock')
    click_button("Submit")
    expect(page).to have_content('rock')
  end

  scenario 'Enters paper' do
    enter_player_name
    page.choose('paper')
    click_button("Submit")
    expect(page).to have_content('paper')
  end

  scenario 'Enters scissors' do
    enter_player_name
    page.choose('scissors')
    click_button("Submit")
    expect(page).to have_content('scissors')
  end

end
#
# feature 'Player wins' do
#   scenario 'player is displayed as winner' do
#
#   end
# end
#
# feature 'Computer wins' do
#   scenario 'computer is displayed as winner' do
#   end
# end
#
# feature 'Player and computer draw' do
#   scenario 'player and computer are displayed as tied' do
#   end
# end
