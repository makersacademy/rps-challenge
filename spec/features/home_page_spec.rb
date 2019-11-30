feature 'Testing the home page' do
  scenario 'can run app and welcome the user to the game of RPS' do
    visit '/'
    expect(page).to have_content 'Welcome to the best Rock Paper Scissors game you have ever seen!'
  end
end
