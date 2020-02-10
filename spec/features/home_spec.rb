feature 'home page' do
  scenario 'check home page can be found' do 
    visit("/")
    expect(page).to have_content "Welcome to Rock, Paper, Scissors!"
  end
  
  scenario 'include enter name' do 
    visit("/")
    expect(page).to have_content "Enter player name:"
  end
end
