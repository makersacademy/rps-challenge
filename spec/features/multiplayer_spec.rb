feature 'can play multiplayer' do
  scenario 'can play on your own' do
    visit '/'
    sign_in_and_play_multi
    expect(page).to have_content "Josh vs. Sam"
  end

  scenario 'can both pick options' do
    visit '/'
    sign_in_and_play_multi
    click_button "Rock"
    click_button "Paper"
    expect(page).to have_content "Josh picked Rock\nSam picked Paper"
  end

  scenario 'player 1 wins' do
    visit '/'
    sign_in_and_play_multi
    click_button "Rock"
    click_button "Scissors"
    expect(page).to have_content "Josh Wins!"
  end

  scenario 'player 2 wins' do
    visit '/'
    sign_in_and_play_multi
    click_button "Rock"
    click_button "Paper"
    expect(page).to have_content "Sam Wins!"
  end

  scenario 'lets you play again' do
    visit '/'
    sign_in_and_play_multi
    click_button "Rock"
    click_button "Paper"
    click_button "Play Again?"
    expect(page).to have_content "Josh vs. Sam"
  end
end
