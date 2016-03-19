feature 'Welcome Screen and Login: ' do

  scenario 'Page has a welcome message' do
    access_login_page
    expect(page).to have_content 'Welcome to Rock Paper Scissor Lizard Spock'
  end


end
