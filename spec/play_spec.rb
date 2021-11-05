feature 'player can enter their name and see it displayed' do
  it 'can show player name' do
    sign_in_and_play
    expect(page).to have_content 'Albert'
  end
end
