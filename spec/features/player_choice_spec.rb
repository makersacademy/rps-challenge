feature 'player choice' do
  scenario 'shows player chose paper' do
    sign_in
    click_on('Paper')
    expect(page).to have_content('Jimmy plays: Paper')
  end
end
