feature 'Mulitplayer Play RPS' do
  scenario 'Checking buttons test RPS' do
    sign_in_computer
    expect(page).to have_button 'ROCK'
    expect(page).to have_button 'PAPER'
    expect(page).to have_button 'SCISSORS'
  end

  scenario 'Posts the buttons choice on the page' do
    sign_in_computer
    click_button 'SCISSORS'
    expect(page).to have_content 'Jack You chose SCISSORS'
  end

  scenario "Computer chooses rock paper or scissors" do 
    visit('/computer_play')
    expect(page).to have_content "computer chose"
  end

end