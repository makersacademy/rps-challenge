feature "RPS Features" do

  scenario 'check tests' do
    visit('/')
    expect(page).to have_content('Welcome to Rock, Paper, Scissors')
  end
  
  scenario 'players can enter names, submit and see names on screen' do
    sign_in_and_submit
    expect(page).to have_content('Dave')
  end

  scenario 'player can choose rock, paper or scissors' do
    sign_in_and_submit
    expect(page).to have_content('Choose a weapon')
  end

  scenario 'player can choose a weapon, see a result' do
    sign_in_and_submit
    fill_in('weapon', with: 'rock')
    click_on("Fight!")
    expect(page).to have_content('rock')
  end

  scenario 'player can play again' do
    sign_in_and_submit
    fill_in('weapon', with: 'paper')
    click_on("Fight!")
    expect(page).to have_content('Play again')
  end
end
