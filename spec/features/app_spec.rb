feature 'RPS' do
  scenario 'welcome player on the homepage' do
    visit('/')
    expect(page).to have_content "Hello there,  player! \n welcome to the RPS game, please fill in your name"
  end
end
