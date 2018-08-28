feature 'It records the users choice' do
  scenario 'they choose \'rock\'' do
    play_for_1
    click_button('rock')
    expect(page).to have_content('rock')
  end

  scenario 'they choose \'paper\'' do
    play_for_1
    click_button('paper')
    expect(page).to have_content('paper')
  end

  scenario 'they choose \'scissors\'' do
    play_for_1
    click_button('scissors')
    expect(page).to have_content('scissors')
  end
end 
