feature 'Name' do
  scenario 'Shows name after entering' do
    sign_in_and_play
    expect(page).to have_content('User01')
  end
end
