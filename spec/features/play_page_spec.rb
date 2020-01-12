feature 'display name' do
  scenario 'shows player name' do
    log_in
    expect(page).to have_content 'Umberto'
  end
end

feature 'shows options' do
  scenario 'shows player options' do
    log_in
    expect(page).to have_content 'Rock Paper Scissor'
  end
end

feature 'shows win counter' do
  scenario 'player start with 0 wins' do
    log_in
    expect(page).to have_content 'Umberto wins count: 0'
  end

  scenario 'show 1 win for Umberto' do
    log_in
    player1_win
    expect(page).to have_content 'Umberto wins count: 1'
  end

  scenario 'show 5 wins for Umberto' do
    log_in
    5.times { player1_win }
    expect(page).to have_content 'Umberto wins count: 5'
  end

  scenario "losing doesn't change wins count" do
    log_in
    player2_win
    expect(page).to have_content 'Umberto wins count: 0'
  end

  scenario "losing after a win does't change wins count" do
    log_in
    player1_win
    player2_win
    expect(page).to have_content 'Umberto wins count: 1'
  end
end
