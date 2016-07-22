feature 'Register name' do
  scenario 'user registers name' do
    sign_in_and_play
    expect(page).to have_content 'Mali'
  end
end
