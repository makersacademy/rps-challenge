feature '#register' do
  scenario '>name of player on index page' do
    sign_in_and_play
    expect(page).to have_content("Hi, Name. Rock, paper, scissors?")
  end
end
