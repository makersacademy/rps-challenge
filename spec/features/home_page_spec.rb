feature 'RPS Welcome Page' do
  scenario "Player can see the RPS heading" do
    visit('/')
    expect(page).to have_content "Rock, Paper, Scissors... Go!"
  end
end