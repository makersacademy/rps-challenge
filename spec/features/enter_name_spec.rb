feature 'can enter name at root directory' do
  scenario 'home page allows you to register your name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Kane!'
  end
end