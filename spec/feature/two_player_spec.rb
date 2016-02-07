feature 'can play against a friend' do
  scenario 'can win against Sheldon' do
    sign_in_and_play_for2
    click_button('Lizzard')
    click_button('Spock')
    expect(page).to have_content 'Player1 wins!'
  end

  scenario 'can lose against Sheldon' do
    sign_in_and_play_for2
    click_button('Lizzard')
    click_button('Scissors')
    expect(page).to have_content 'Player2 wins!'
  end

  scenario 'can draw against Sheldon' do
    sign_in_and_play_for2
    click_button('Lizzard')
    click_button('Lizzard')
    expect(page).to have_content "It's a draw..."
  end

end
