feature "Sinatra runs my webpage" do
  scenario "I get the message 'Hello World-of-RPS!'" do
    visit '/'
    expect(page).to have_content "Welcome to the World-of-RPS!"
  end
end
