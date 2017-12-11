feature 'Choice' do
  scenario 'player can see the rock button' do
    sign_in_and_play
    expect(page).to have_button "Rock"
  end

  scenario 'player can see the paper button' do
    sign_in_and_play
    expect(page).to have_button "Paper"
  end

  scenario 'player can see the scissors button' do
    sign_in_and_play
    expect(page).to have_button "Scissors"
  end

  scenario 'player can choose a weapon' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You have chosen rock'
  end

  scenario 'the computer player can choose a weapon' do
    srand(1)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'The computer has chosen paper'
  end
end
