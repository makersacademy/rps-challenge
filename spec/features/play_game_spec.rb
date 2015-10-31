feature 'Player plays' do
  scenario "Player plays 'Rock'" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Norm played Rock'
  end
  scenario "Player plays 'Scissors'" do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Norm played Scissors'
  end
  scenario "Player plays 'Paper'" do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Norm played Paper'
  end
  scenario "Outcome is shown" do
    sign_in_and_play
    click_button 'Paper'
    expect(page).not_to have_content 'No game played yet'
  end
end

