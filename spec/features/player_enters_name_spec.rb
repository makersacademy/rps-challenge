feature 'start game' do

  scenario 'marketeer knows to enter name to begin the game' do
    visit '/'
    expect(page).to have_content('Enter your name below to take on Superhans!')
  end

  scenario 'marketeer can enter their name and begin the game' do
    sign_in_and_play('Alex')
    expect(page).to have_content('Alex vs. Superhans')
  end
end
