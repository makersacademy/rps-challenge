feature 'Computer Attacking' do
  scenario 'Computer attacks Player with Rock' do
    allow(Player).to receive(:move).and_return("Rock")
    sign_in_and_play
    fill_in :player_attack, with: 'Rock'
    click_button 'Submit'
    click_link 'OK'
    expect(page).not_to have_content 'Computer chooses Paper!'
    expect(page).not_to have_content 'Computer chooses Scissors!'
    expect(page).to have_content 'Computer chooses Rock!'
  end

  scenario 'Computer attacks Player with Paper' do
    allow(Player).to receive(:move).and_return("Paper")
    sign_in_and_play
    fill_in :player_attack, with: 'Rock'
    click_button 'Submit'
    click_link 'OK'
    expect(page).not_to have_content 'Computer chooses Rock!'
    expect(page).not_to have_content 'Computer chooses Scissors!'
    expect(page).to have_content 'Computer chooses Paper!'
  end

  scenario 'Computer attacks Player with Scissors' do
    allow(Player).to receive(:move).and_return("Scissors")
    sign_in_and_play
    fill_in :player_attack, with: 'Rock'
    click_button 'Submit'
    click_link 'OK'
    expect(page).not_to have_content 'Computer chooses Rock!'
    expect(page).not_to have_content 'Computer chooses Paper!'
    expect(page).to have_content 'Computer chooses Scissors!'
  end

end
