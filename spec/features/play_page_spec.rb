
feature 'display name' do
  before { log_in }

  scenario 'shows player name' do
    expect(page).to have_content 'Umberto'
  end

  scenario 'shows opponent name' do
    expect(page).to have_content 'Computer'
  end
end

feature 'shows options' do
  scenario 'shows player options' do
    log_in
    expect(page).to have_content 'Rock Paper Scissor'
  end
end

feature 'shows player 1 wins counter' do
  before { log_in }

  scenario 'player start with 0 wins' do
    expect(page).to have_content 'Umberto wins count: 0'
  end

  scenario 'show 1 win for Umberto' do
    player1_win
    expect(page).to have_content 'Umberto wins count: 1'
  end

  scenario 'show 5 wins for Umberto' do
    5.times { player1_win }
    expect(page).to have_content 'Umberto wins count: 5'
  end

  scenario "losing doesn't change wins count" do
    player2_win
    expect(page).to have_content 'Umberto wins count: 0'
  end

  scenario "losing after a win does't change wins count" do
    player1_win
    player2_win
    expect(page).to have_content 'Umberto wins count: 1'
  end
end

feature 'shows player 2 wins counter' do
  before { log_in }

  scenario 'Computer start with 0 wins' do
    expect(page).to have_content 'Computer wins count: 0'
  end

  scenario 'show 1 win for Computer' do
    player2_win
    expect(page).to have_content 'Computer wins count: 1'
  end

  scenario 'show 5 wins for Computer' do
    5.times { player2_win }
    expect(page).to have_content 'Computer wins count: 5'
  end

  scenario "losing doesn't change Computer wins count" do
    player1_win
    expect(page).to have_content 'Computer wins count: 0'
  end

  scenario "losing after a win does't change Computer wins count" do
    player2_win
    player1_win
    expect(page).to have_content 'Computer wins count: 1'
  end
end
