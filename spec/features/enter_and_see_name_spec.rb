feature 'enter and see names' do
  scenario 'shows name after entering' do
    sign_in_and_play
    expect(page).to have_content('User01')
  end
end
