feature 'game' do

  scenario 'takes players move - rock' do
    sign_in_and_play
    click_button "rock"
    expect(page).to have_content "You chose Rock"
  end

  scenario 'takes players move - paper' do
    sign_in_and_play
    click_button "paper"
    expect(page).to have_content "You chose Paper"
  end

  scenario 'takes players move - scissors' do
    sign_in_and_play
    click_button "scissors"
    expect(page).to have_content "You chose Scissors"
  end

  scenario 'shows computers move' do
    sign_in_and_play
    click_button "rock"
    expect(page).to have_content "Your opponent chose "
  end

end
