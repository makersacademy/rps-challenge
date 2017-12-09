feature 'Testing infrastructure' do
  scenario "run the app and check page content" do
    visit('/')
    expect(page).to have_content 'Welcome to the Rock Paper Scissors game'
  end
end
