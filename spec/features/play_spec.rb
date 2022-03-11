feature 'Playing a game of rock paper scissors' do
  scenario 'view options' do 
    sign_in
    expect(page).to have_field 'rock'
    expect(page).to have_field 'paper'
    expect(page).to have_field 'scissors'
  end
end