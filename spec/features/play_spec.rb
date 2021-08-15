feature "Player chooses move and next page confirms moves" do
  scenario "Player 1 makes move and gets confirmation" do
    sign_in_and_play
    fill_in('player_1_move', with: 'rock')
    fill_in('player_2_move', with: 'rock')
    click_button('GO!')
    expect(page).to have_content "Dan chose rock"
  end

  scenario "Player 2 makes move and gets confirmation" do
    sign_in_and_play
    fill_in('player_1_move', with: 'rock')
    fill_in('player_2_move', with: 'rock')
    click_button('GO!')
    expect(page).to have_content "Opponent chose rock"
  end

end

feature "Players both choose move and result page correctly displays winner" do
  
  before do
    sign_in_and_play
  end

  scenario "Dan chooses rock and Opponent chooses rock" do
    fill_in('player_1_move', with: 'rock')
    fill_in('player_2_move', with: 'rock')
    click_button('GO!')
    expect(page).to have_content "Game is a draw"
  end

  scenario "Dan chooses rock and Opponent chooses scissors" do
    fill_in('player_1_move', with: 'rock')
    fill_in('player_2_move', with: 'scissors')
    click_button('GO!')
    expect(page).to have_content "Dan wins"
  end

  scenario "Dan chooses scissors and Opponent chooses rock" do
    fill_in('player_1_move', with: 'scissors')
    fill_in('player_2_move', with: 'rock')
    click_button('GO!')
    expect(page).to have_content "Opponent wins"
  end

  scenario "Dan chooses papers and Opponent chooses papers" do
    fill_in('player_1_move', with: 'paper')
    fill_in('player_2_move', with: 'paper')
    click_button('GO!')
    expect(page).to have_content "Game is a draw"
  end

  scenario "Dan chooses paper and Opponent chooses rock" do
    fill_in('player_1_move', with: 'paper')
    fill_in('player_2_move', with: 'rock')
    click_button('GO!')
    expect(page).to have_content "Dan wins"
  end

  scenario "Dan chooses rock and Opponent chooses paper" do
    fill_in('player_1_move', with: 'rock')
    fill_in('player_2_move', with: 'paper')
    click_button('GO!')
    expect(page).to have_content "Opponent wins"
  end

  scenario "Dan chooses scissors and Opponent chooses scissors" do
    fill_in('player_1_move', with: 'scissors')
    fill_in('player_2_move', with: 'scissors')
    click_button('GO!')
    expect(page).to have_content "Game is a draw"
  end

  scenario "Dan chooses scissors and Opponent chooses paper" do
    fill_in('player_1_move', with: 'scissors')
    fill_in('player_2_move', with: 'paper')
    click_button('GO!')
    expect(page).to have_content "Dan wins"
  end

  scenario "Dan chooses paper and Opponent chooses scissors" do
    fill_in('player_1_move', with: 'paper')
    fill_in('player_2_move', with: 'scissors')
    click_button('GO!')
    expect(page).to have_content "Opponent wins"
  end

end
