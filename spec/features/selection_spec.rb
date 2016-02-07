feature 'Selecting' do
  scenario "rock shows rock choice on screen" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end

  scenario "paper shows paper choice on screen" do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'You chose Paper'
  end

  scenario "scissors shows scissors choice on screen" do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You chose Scissors'
  end

end
