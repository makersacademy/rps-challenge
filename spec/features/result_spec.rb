feature "result is a win, lose or draw" do
  scenario "if player 1 chooses rock and player 2 chooses scissors, player 1 wins" do
    sign_in
    click_on "Rock"
    click_on "Scissors"
    expect(page).to have_content "diana wins!"
  end

  scenario "if player 1 chooses rock and player 2 chooses paper, player 1 loses" do
    sign_in
    click_on "Rock"
    click_on "Paper"
    expect(page).to have_content "dave wins!"
  end

  scenario "if player 1 chooses rock and player 2 chooses rock, it's a draw" do
    sign_in
    click_on "Rock"
    click_on "Rock"
    expect(page).to have_content "It's a draw!"
  end
end
