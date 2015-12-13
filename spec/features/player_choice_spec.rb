feature 'Making a choice' do
  scenario 'Does not display the results page link before both players have choosen' do
    sign_in_and_play
    expect(page).to_not have_selector(:link, 'Check who won...')
  end

  scenario "Allows the player to make a choice and displays that they've chosen" do
    sign_in_and_play
    click_button('btn_r1')
    expect(page).to have_content 'Marketeer has chosen!'
  end

  scenario "Allows a second player to make a choice and displays that they've chosen" do
    sign_in_and_play_2_players
    click_button('btn_r1')
    click_button('btn_p2')
    expect(page).to have_content 'Katie has chosen!'
  end

  scenario 'Displays that the computer has chosen' do
    sign_in_and_play
    click_button('btn_s1')
    expect(page).to have_content 'Computer has chosen!'
  end
end
