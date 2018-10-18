feature 'Register name' do
  scenario 'submit name, return name' do
    visit('/')
    fill_in :name, with: 'Clare'
    click_button 'Play'
    expect(page).to have_content 'Welcome to Rock Paper Scissors, Clare!'
  end
end
