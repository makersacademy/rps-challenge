feature 'Testing welcome page' do
  scenario 'Checking name of the game' do
    visit('/')
    expect(page).to have_content "Rock Paper Scissors" 
  end

  
  scenario 'Checking asking for name' do
    visit('/')
    expect(page).to have_content "Please enter your name" 
  end
end
