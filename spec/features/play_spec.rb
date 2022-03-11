feature 'Playing a game of rock paper scissors' do
  scenario 'view choices' do 
    sign_in
    expect(page).to have_field 'rock'
    expect(page).to have_field 'paper'
    expect(page).to have_field 'scissors'
  end

  scenario 'make choice' do
    sign_in
    choose 'rock'
    click_button 'Submit'
    expect(page).to have_content 'Jonny chose rock'
  end
end