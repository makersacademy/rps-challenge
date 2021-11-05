feature 'it displays game results' do
  it 'displays users choice' do
    sign_in_and_play
    choose('choice', option: 'rock')
    click_on('Submit choice')
    expect(page).to have_content 'rock'
  end
end