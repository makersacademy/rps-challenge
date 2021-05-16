feature 'Register name' do
  scenario 'register name' do
    sign_in_and_play
    expect(page).to have_content 'Hello, Hulk!'
  end
end
