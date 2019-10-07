feature 'Enter name' do
  scenario 'registering name' do
    sign_in_and_play
    expect(page).to have_content 'Cinderella vs. Bot'
  end
end
