feature 'register name' do
  scenario 'Register name before a game start' do
    visit('/')
    fill_in("PlayerName", with: "Ben")
    click_button("Submit")
    expect(page).to have_content "Hello, and welcome to Rock, Paper, Scissors Ben"
  end
end