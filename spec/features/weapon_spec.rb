feature 'pick a weapon' do
  scenario 'rock is displayed for player' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content 'You picked rock'
  end

  scenario 'paper is displayed for player' do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content 'You picked paper'
  end

  scenario 'scissors is displayed for player' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content 'You picked scissors'
  end
end
