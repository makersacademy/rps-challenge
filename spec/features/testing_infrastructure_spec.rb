feature 'Testing infrastructure' do
  scenario "run the app and check page content" do
    visit('/')
    expect(page).to have_content 'Hello Rock Paper Scissors!'
  end
end
