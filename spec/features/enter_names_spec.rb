feature 'Entering names' do
  scenario 'Players enter their names' do
    sign_in_and_play
    expect(page).to have_content "Telgi VS Jogi"
  end
end
