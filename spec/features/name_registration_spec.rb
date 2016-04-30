feature 'Enter names' do
  scenario 'Registration page welcomes user' do
    visit '/'
    expect(page).to have_content "Welcome friend, to the most intense game of Rock, Paper Scissors you have ever seen!"
    expect(page).to have_content "What is your name?"
  end

  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Lord Megatron'
    click_button 'Janken!'
    expect(page).to have_content 'Lord Megatron is ready for battle!'
  end
end