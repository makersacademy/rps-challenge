feature 'Entering 2 names' do
  scenario 'shows both names' do
    sign_in_and_play

    expect(page).to have_content 'Tony vs Computer'
  end
end
