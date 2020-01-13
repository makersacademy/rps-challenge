feature 'Testing infrastructure' do
  scenario 'It checks that the testing infrastructure is working properly' do
    visit('/')
    expect(page).to have_content "Are you ready to play Rock Paper Scissors?"
    expect(page).to have_content "Enter you names to begin the game"
  end 
end 
