feature 'Entering 2 names' do
  scenario 'shows both names' do
    sign_in_1_player

    expect(page).to have_content 'Tony vs Computer'
  end
end
