feature 'Homepage should give instructions to the user' do
  scenario 'homepage should display text that explains how to play the game and how to interact with the form' do
    visit('/')
    expect(page).to have_content('Welcome to the rock paper scissors game')
  end
end
