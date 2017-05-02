feature 'choice' do

before do
  sign_in_and_play
end

it 'allows players to choose from one of 3 options' do
  visit('/')
expect(page).to have_content 'Please choose your Hand Shape'
end

it 'confirms player choice on subsequent page' do
    click_link("Rock")
    expect(page).to have_content 'player chooses rock'
end
end
