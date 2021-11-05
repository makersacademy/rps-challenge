feature 'player can enter their name and see it displayed' do
  it 'can show player name' do
    sign_in_and_play
    expect(page).to have_content 'Albert'
  end
  
  it 'displays users choice' do
    sign_in_and_play
    choose('choice', option: 'rock')
    click_on('Submit choice')
    expect(page).to have_content 'rock'
  end
end
