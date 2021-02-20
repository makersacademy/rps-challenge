feature 'game' do

  scenario 'takes players move - rock' do
    sign_in_and_play
    click_button "rock"
    expect(page).to have_content "Pete chose Rock"
  end

  scenario 'takes players move - paper' do
    sign_in_and_play
    click_button "paper"
    expect(page).to have_content "Pete chose Paper"
  end

  scenario 'takes players move - scissors' do
    sign_in_and_play
    click_button "scissors"
    expect(page).to have_content "Pete chose Scissors"
  end

  scenario 'shows computers move' do
    sign_in_and_play
    click_button "rock"
    expect(page).to have_content "The computer chose "
  end

  scenario 'allows you to play again' do
    sign_in_and_play
    click_button "rock"
    click_button "Play again"
    expect(page).to have_content "Choose a move:"
  end

end
