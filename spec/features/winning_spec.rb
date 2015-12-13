feature 'Winning the game' do
  scenario 'The result is displayed' do
    sign_in_and_play
    choose_and_check
    expect(page).to have_content 'And the winner is...'
  end

  scenario "The player's choice is displayed" do
    sign_in_and_play
    choose_and_check
    expect(page).to have_content 'Marketeer chose: Paper'
  end

  scenario "The computer's choice is displayed" do
    sign_in_and_play
    choose_and_check
    expect(page).to have_content 'Computer chose: '
  end

  scenario "The second player's choice is displayed" do
    sign_in_and_play_2_players
    click_button('btn_p1')
    click_button('btn_s2')
    click_link 'Check who won...'
    expect(page).to have_content 'Ruby chose: '
  end
end
