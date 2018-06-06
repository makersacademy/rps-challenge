feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content "Welcome to Rock Paper Scissors!"
  end
end
