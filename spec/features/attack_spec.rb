feature 'Attacking' do
  scenario 'Player attacks Computer with Rock' do
    sign_in_and_play
    fill_in :player_attack, with: 'Rock'
    click_button 'Submit'
    expect(page).not_to have_content 'Dave chooses Paper!'
    expect(page).not_to have_content 'Dave chooses Scissors!'
    expect(page).to have_content 'Dave chooses Rock!'
  end

  scenario 'Player attacks Computer with Paper' do
    sign_in_and_play
    fill_in :player_attack, with: 'Paper'
    click_button 'Submit'
    expect(page).not_to have_content 'Dave chooses Rock!'
    expect(page).not_to have_content 'Dave chooses Scissors!'
    expect(page).to have_content 'Dave chooses Paper!'
  end

  scenario 'Player attacks Computer with Scissors' do
    sign_in_and_play
    fill_in :player_attack, with: 'Scissors'
    click_button 'Submit'
    expect(page).not_to have_content 'Dave chooses Paper!'
    expect(page).not_to have_content 'Dave chooses Rock!'
    expect(page).to have_content 'Dave chooses Scissors!'
  end
end
