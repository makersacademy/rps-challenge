feature 'Enter names' do
  scenario 'submitting names' do
    enter_name_and_start_game
    
    expect(page).to have_content 'Welcome, Halloumi!'
  end
end
