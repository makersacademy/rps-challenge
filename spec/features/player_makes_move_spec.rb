feature 'User makes a move' do

  before(:each) do
    sign_in
  end

  scenario "scissors" do
    click_button 'scissors'
    player_1_move = find_by_id('player_1_move')
    expect(player_1_move).to have_text "scissors"
  end

  scenario "paper" do
    click_button 'paper'
    player_1_move = find_by_id('player_1_move')
    expect(player_1_move).to have_text "paper"
  end

  scenario "rock" do
    click_button 'rock'
    player_1_move = find_by_id('player_1_move')
    expect(player_1_move).to have_text "rock"
  end
end
