feature 'can play single player' do
  scenario 'can play on your own' do
    visit '/'
    sign_in_and_play
    expect(page).to have_content "Josh vs. Computer"
  end

  scenario 'can pick an option' do
    visit '/'
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Josh picked Rock"
  end

  scenario 'computer picks an option' do
    srand(67811)
    visit '/'
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Computer picked Rock"
  end

  scenario 'shows player winning' do
    srand(9999999)
    visit '/'
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "Josh Wins!"
  end

  scenario 'shows computer winning' do
    srand(9999999)
    visit '/'
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Computer Wins!"
  end

  scenario 'can show a draw' do
    srand(67811)
    visit '/'
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Draw"
  end

  scenario 'lets you play again' do
    visit '/'
    sign_in_and_play
    click_button "Rock"
    click_button "Play Again?"
    expect(page).to have_content "Josh vs. Computer"
  end
end
