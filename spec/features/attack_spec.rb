feature 'Attacking' do
  scenario 'Player attacks Computer' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).not_to have_content 'Dave chooses Paper!'
    expect(page).not_to have_content 'Dave chooses Scissors!'
    expect(page).to have_content 'Dave chooses Rock!'
  end
end
