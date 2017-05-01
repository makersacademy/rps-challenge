feature 'testing infrastructure' do
  scenario 'runs app and tests page content' do
    visit '/'
    expect(page).to have_content 'Rock, Paper, Scissors'
  end

  scenario 'returns to /play when Play Again is clicked' do
    sign_in_and_play
    click_button('Rock')
    click_button('Play Again')
    expect(page).to have_content 'Jon vs. Computer'
  end

  scenario 'returns to /index when Quit is clicked' do
    sign_in_and_play
    click_button('Scissors')
    click_button('Quit')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
end
