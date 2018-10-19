feature 'User makes a move' do

  scenario "scissors" do
    sign_in
    click_button 'scissors'
    player_1_move = find_by_id('player_1_move')
    expect(player_1_move).to have_text "scissors"
  end

  scenario "paper" do
    sign_in
    click_button 'paper'
    player_1_move = find_by_id('player_1_move')
    expect(player_1_move).to have_text "paper"
  end

  scenario "rock" do
    sign_in
    click_button 'rock'
    player_1_move = find_by_id('player_1_move')
    expect(player_1_move).to have_text "rock"
  end
end
