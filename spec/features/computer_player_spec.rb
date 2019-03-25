feature 'Opponent is a computer' do
  scenario 'computer as first player' do
    register_computer_against_1_player
    expect(page).to have_content 'Computer has chosen'
  end

  scenario 'computer as second player' do
    register_1_player_against_computer
    click_button 'paper'
    expect(page).to have_content 'Computer has chosen'
  end
end