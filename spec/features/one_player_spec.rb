feature 'It takes the lone players name' do
  scenario 'player enters their name' do
    play_for_1
    expect(page).to have_content('A')
  end 
end
