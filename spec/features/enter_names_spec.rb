feature 'Entering name' do
  scenario 'Player one enters name' do
    sign_in_and_play
    expect(page).to have_content "Telgi VS Computer"
  end
end
