feature 'Enter name' do
  scenario 'submit name' do
    signin_and_play
    expect(page).to have_content 'Adrien'
  end
end
