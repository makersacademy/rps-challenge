feature "RPS Features" do

  scenario 'check tests' do
    visit('/')
    expect(page).to have_content('Welcome to Rock, Paper and Scissors')
  end
  
  scenario 'players can enter names, submit and see names on screen' do
    sign_in_and_submit
    expect(page).to have_content('Dave')
  end

end