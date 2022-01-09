feature 'home' do
  scenario 'welcomed' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors'
  end

  scenario 'enter name' do
    visit '/'
    expect(page).to have_content 'Please enter your name:'
  end

  scenario 'submit button' do
    visit '/'
    expect(page).to have_button 'Submit'
  end

end
