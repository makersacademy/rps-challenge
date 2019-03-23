feature 'Landing Page Display' do

  scenario 'User views landing page with input form' do
    visit '/'
    expect(page).to have_text("What's your name?")
  end

  scenario 'User enters name' do
    visit '/'
    enter_name
    expect(page).to have_text("Let's Play Pusheen!")
  end

end
