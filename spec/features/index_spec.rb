feature 'Index Page' do
  scenario 'it shows welcome message' do
    visit('/')
    expect(page).to have_content("Rock Paper Scissors Game")
  end
end
