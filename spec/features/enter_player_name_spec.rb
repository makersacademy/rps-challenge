feature 'Players can enter names' do

  scenario 'Player enters their name and it shows on the /play route' do
    sign_in_and_click_play
    expect(page).to have_content 'Ozzy Osbourne'
  end
  
end
