feature 'Enter name' do
  scenario 'Player can fill in their name' do
    sign_in_and_play
    expect(page).to have_content "Marketeer: Imogen"
  end 
end
