feature 'play' do

  scenario 'Player can select rock' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content "You chose rock"
  end

  scenario 'Player can select paper' do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content "You chose paper"
  end

  scenario 'Player can select scissors' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content "You chose scissors"
  end

end
