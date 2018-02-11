feature 'Entering name for submission' do
  scenario 'Player one enters name and submits' do
    sign_in_and_play
    expect(page).to have_content "Telgi VS Computer"
  end

  scenario 'Player one doesn\'t enter name and submits' do
    sign_in_with_no_name_and_play
    expect(page).to have_content "Human VS Computer"
  end
end
