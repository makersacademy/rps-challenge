feature 'enter name' do

  scenario 'front page has a player1 name field' do
    visit '/'
    expect(page).to have_field "p1_name"
  end

  scenario 'front page has a player2 name field' do
    visit '/'
    expect(page).to have_field "p2_name"
  end

  scenario 'see player1 vs. player2 on next page' do
    start_the_game
    expect(page).to have_content "Dana vs. Matt"
  end
end
