feature 'Enter one player' do
  scenario 'run check one player entered in game' do
    sign_in
    expect(page).to have_content 'Thomas'
  end
end
