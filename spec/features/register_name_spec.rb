feature 'Register name' do
  scenario 'submitting the users name before playing' do
    enter_your_name_and_play
    
    expect(page).to have_content 'John vs. Venom'
  end
end
