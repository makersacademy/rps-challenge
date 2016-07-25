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
end
