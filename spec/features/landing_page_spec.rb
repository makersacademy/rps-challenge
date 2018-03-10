feature 'Check that landing page works' do
  scenario 'User enters their name and it shows' do
    sign_in_and_play
    expect(page).to have_content 'Greetings Frank!'
  end
end
