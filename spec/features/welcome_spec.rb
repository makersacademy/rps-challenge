feature 'Welcomes a user on the homepage' do 
  scenario 'User first visits the homepage' do 
    visit '/'
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors'
  end
end
