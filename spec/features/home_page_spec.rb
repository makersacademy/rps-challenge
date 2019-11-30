feature 'home page' do

  scenario 'check home page can be found' do 
    visit("/")
    expect(page).to have_content "ROCK. PAPER. SCISSORS"
  end

  scenario 'include sign in prompt' do 
    visit("/")
    expect(page).to have_content "Sign in to Play"
  end
  
end