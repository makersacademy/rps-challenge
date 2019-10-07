feature 'the home page' do
  scenario 'user is welcomed to the app' do
    visit '/'
    expect(page).to have_content 'Hello! Welcome to Rock Paper Scissors! Please enter your name!'
  end
end
