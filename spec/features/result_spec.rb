feature 'Result of game' do

  scenario 'See computer choice' do
    sign_in_and_play
    rock_chosen
    click_button('See result')
    expect(page).to have_content 'Computer chose scissors'
  end

  scenario 'Player has won' do
    sign_in_and_play
    rock_chosen
    click_button('See result')
    expect(page).to have_content 'Amy wins!'
  end
end
