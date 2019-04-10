feature 'can keep score in multiplayer' do
  scenario 'score 1-0 when player 1 wins' do
    visit '/'
    sign_in_and_play_multi
    click_button "Rock"
    click_button "Scissors"
    expect(page).to have_content "Josh 1 - 0 Sam"
  end

  scenario 'score 0-1 when player 2 wins' do
    visit '/'
    sign_in_and_play_multi
    click_button "Paper"
    click_button "Scissors"
    expect(page).to have_content "Josh 0 - 1 Sam"
  end

  scenario 'keeps score after multiple games' do
    visit '/'
    sign_in_and_play_multi
    click_button "Rock"
    click_button "Scissors"
    click_button "Play Again?"
    click_button "Rock"
    click_button "Scissors"
    click_button "Play Again?"
    click_button "Rock"
    click_button "Scissors"
    click_button "Play Again?"
    click_button "Paper"
    click_button "Scissors"
    expect(page).to have_content "Josh 3 - 1 Sam"
  end
end

feature 'can keep score in single player' do
  scenario 'score 1-0 when player 1 wins' do
    srand(9999999)
    visit '/'
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "Josh 1 - 0 Computer"
  end

  scenario 'score 0-1 when computer wins' do
    srand(9999999)
    visit '/'
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Josh 0 - 1 Computer"
  end

  scenario 'keeps score after multiple games' do
    srand(9999999)
    visit '/'
    sign_in_and_play
    click_button "Scissors"
    click_button "Play Again?"
    click_button "Scissors"
    click_button "Play Again?"
    click_button "Scissors"
    click_button "Play Again?"
    click_button "Paper"
    expect(page).to have_content "Josh 3 - 1 Computer"
  end
end
