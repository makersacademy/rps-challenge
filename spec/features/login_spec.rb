feature 'Welcome Screen and Login: ' do

  scenario 'Page has a welcome message' do
    access_login_page
    expect(page).to have_content 'Welcome to Rock Paper Scissor Lizard Spock'
  end

  scenario 'Page has a form to insert the name' do
    access_login_page
    expect(page).to have_field 'name_field'
  end

  scenario 'Page as a Play! button' do
    access_login_page
    expect(page).to have_button 'play_button'
  end

end
