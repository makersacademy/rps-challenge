feature 'Result of game, player wins' do

  scenario 'See computer choice' do
    allow_any_instance_of(Computer).to receive(:choice).and_return('scissors')
    sign_in_and_play
    rock_chosen
    click_button('See result')
    expect(page).to have_content 'Computer chose scissors'
  end

  scenario 'Player has won' do
    allow_any_instance_of(Computer).to receive(:choice).and_return('scissors')
    sign_in_and_play
    rock_chosen
    click_button('See result')
    expect(page).to have_content 'Amy wins!'
  end

end

feature 'Result of game, computer wins' do

  scenario 'See computer choice' do
    allow_any_instance_of(Computer).to receive(:choice).and_return('paper')
    sign_in_and_play
    rock_chosen
    click_button('See result')
    expect(page).to have_content 'Computer chose paper'
  end

  scenario 'Player has won' do
    allow_any_instance_of(Computer).to receive(:choice).and_return('paper')
    sign_in_and_play
    rock_chosen
    click_button('See result')
    expect(page).to have_content 'Computer wins!'
  end

end
