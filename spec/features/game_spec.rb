feature "Player enters username and is ready to play" do
  scenario "Rock, Paper and Scissor options are shown" do
    visit ('/game')
    expect(page).to have_content(@options)
  end
end
