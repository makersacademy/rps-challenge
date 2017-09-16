feature 'names' do
  scenario 'will see your name after entering them' do
    sign_in_and_play
    expect(page).to have_content "Benjamin"
  end
end
