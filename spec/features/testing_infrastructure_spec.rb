feature 'Testing Infrastructure' do
  scenario "Can run the app and check page content" do
    visit ("/")
    expect(page).to have_content "Welcome to Rock, Paper, Scissors!"
  end
end
