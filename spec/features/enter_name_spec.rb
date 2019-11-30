feature 'name form' do
  scenario 'player enters name and sees it on the next page' do
    sign_in
    expect(page).to have_content('Make your choice Jimmy')
  end
end
