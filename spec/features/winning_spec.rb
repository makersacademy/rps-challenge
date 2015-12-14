feature 'Winning the game' do
  scenario "The player's choice is displayed" do
    sign_in_and_play
    choose_and_check
    expect(page).to have_content 'Marketeer chose: Paper'
  end

  scenario "The second player's choice is displayed" do
    sign_in_and_play_2_players
    click_button('btn_p1')
    click_button('btn_s2')
    click_link 'Check who won...'
    expect(page).to have_content 'Ruby chose: Scissors'
  end

  scenario "The computer's choice is displayed" do
    allow(Computer::OPTIONS).to receive(:sample).and_return('Paper')
    sign_in_and_play
    choose_and_check
    expect(page).to have_content 'Computer chose: Paper'
  end

  scenario 'The player wins' do
    sign_in_and_play_2_players
    click_button('btn_p1')
    click_button('btn_r2')
    click_link 'Check who won...'
    expect(page).to have_content 'And the winner is... Marketeer'
  end

  scenario "It's a draw" do
    sign_in_and_play_2_players
    click_button('btn_s1')
    click_button('btn_s2')
    click_link 'Check who won...'
    expect(page).to have_content "And the winner is... It's a draw"
  end

  scenario 'The human opponent wins' do
    sign_in_and_play_2_players
    click_button('btn_p1')
    click_button('btn_s2')
    click_link 'Check who won...'
    expect(page).to have_content 'And the winner is... Ruby'
  end

  scenario 'The computer opponent wins' do
    allow(Computer::OPTIONS).to receive(:sample).and_return('Paper')
    sign_in_and_play
    click_button('btn_r1')
    click_link 'Check who won...'
    expect(page).to have_content 'And the winner is... Computer'
  end
end
