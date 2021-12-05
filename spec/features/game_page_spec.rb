feature 'user can play a game of rock paper scissors with the computer' do
  before(:each) do 
    sign_in
  end

  scenario 'user can select rock' do 
    click_button('ROCK')
    expect(page).to have_content 'Patos: ROCK'
  end

  scenario 'user can select paper' do 
    click_button('PAPER')
    expect(page).to have_content 'Patos: PAPER'
  end

  scenario 'user can select rock' do 
    click_button('SCISSORS')
    expect(page).to have_content 'Patos: SCISSORS'
  end
end
