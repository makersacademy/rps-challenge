feature 'allows user to enter name' do
  scenario 'user passes name' do
    sign_in_and_play
    expect(page).to have_content 'Select your piece Will!'
  end
end
