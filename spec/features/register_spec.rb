feature 'Register name' do
  scenario 'submit name, return name' do
    register
    expect(page).to have_content 'Welcome to Rock Paper Scissors, Clare!'
  end
end
