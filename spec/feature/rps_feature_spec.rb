feature 'User can enter their name on the / page of the site' do
  scenario 'page loads with HTML' do
    visit '/'
    expect(page).to have_content("Please enter your name to begin")
  end
  
  scenario 'enters name on main page' do
    sign_in_submit
  end
end

feature 'User can play rock, paper, scissors' do
  scenario 'user enters their name, hits submit, and the next page loads' do
    sign_in_submit
    expect(page).to have_content("Rock! Paper! Scissors!")
  end
end
