feature "outcome when" do
  before do
    sign_in
  end

  scenario "player_1 wins" do
    player_1_rock
    find_button('Opponents turn').click
    expect(page).to have_content "Alex wins"
  end

  scenario "player_1 loses" do
    player_1_rock
    find_button('Opponents turn').click
    expect(page).to have_content "Alex loses"
  end

  scenario "player_2 wins" do
    player_1_rock
    find_button('Opponents turn').click
    expect(page).to have_content "AI Overlord wins"
  end

  scenario "player_2 loses" do
    player_1_rock
    find_button('Opponents turn').click
    expect(page).to have_content "AI Overlord loses"
  end

  scenario "player_1 and Player_2 draw" do
    player_1_rock
    find_button('Opponents turn').click
    expect(page).to have_content "its a draw"
  end
  #
  # scenario "rock vs paper" do
  #   player_1_rock
  #   find_button('Opponents turn').click
  #   expect(page).to have_content "Rock is suffocated by Paper - AI Overlord wins"
  # end
  #
  # scenario "paper vs rock" do
  #   player_1_paper
  #   find_button('Opponents turn').click
  #   expect(page).to have_content "Rock is suffocated by Paper - Alex wins"
  # end
  #
  # scenario "paper vs scissors" do
  #   player_1_paper
  #   find_button('Opponents turn').click
  #   expect(page).to have_content "Paper is shredded by Scissors - AI Overlord wins"
  # end
  #
  # scenario "scissors vs paper" do
  #   player_1_scissors
  #   find_button('Opponents turn').click
  #   expect(page).to have_content "Paper is shredded by Scissors - Alex wins"
  # end
  #
  # scenario "scissors vs rock" do
  #   player_1_scissors
  #   find_button('Opponents turn').click
  #   expect(page).to have_content "Scissors are smashed by Rock - AI Overlord wins"
  # end
  #
  # scenario "rock vs scissors" do
  #   player_1_rock
  #   find_button('Opponents turn').click
  #   expect(page).to have_content "Scissors are smashed by Rock - Alex wins"
  # end
  #
  # scenario "players have same weapon" do
  #   player_1_rock
  #   find_button('Opponents turn').click
  #   expect(page).to have_content "The same weapons are drawn - its a draw"
  # end
end
