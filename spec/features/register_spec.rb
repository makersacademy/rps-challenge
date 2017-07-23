feature 'Register my name' do
  scenario 'see my name in lights' do
    visit('/register')
    fill_in :name, with: 'Mutsa'
    click_button 'Submit'
    expect(body).to include 'Welcome to RPS Mutsa'
  end
end
