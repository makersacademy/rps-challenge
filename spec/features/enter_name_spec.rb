feature 'welcome page' do
  scenario 'user can see a welcome page' do
    visit '/'
    expect(page).to have_content('Welcome to Rock, Paper, Scissors!')
  end

  scenario 'user can enter their name to begin game' do
    enter_name_and_play
    expect(page).to have_content("muhammad vs. computer")
  end
end
