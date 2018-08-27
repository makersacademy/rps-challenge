feature "RPS Features" do

  scenario 'check tests' do
    visit('/')
    expect(page).to have_content('Welcome to Rock, Paper and Scissors')
  end
  
  scenario 'players can enter names, submit and see names on screen' do
    visit('/')
    fill_in('player_one', with: 'Dave')
    click_on('Submit') 
    expect(page).to have_content('Dave')
  end

end