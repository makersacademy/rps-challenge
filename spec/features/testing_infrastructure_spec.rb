require '././app.rb'

feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors! What is your name?'
  end
end

feature 'Enter player name' do
  scenario 'submitting player name' do
    visit('/')
    fill_in :player_name, with: 'Oli'
    click_button "Enter"
    expect(page).to have_content 'Choose your move....if you dare!'
  end
end

feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    visit '/play'
    fill_in('player_name', with: 'Oli')
    select('Rock', from: 'chosen_move')
    click_button('Enter')
    expect(page).to have_content "You chose Rock"
  end
end
