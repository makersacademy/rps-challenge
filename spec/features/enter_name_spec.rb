feature 'enter player name' do
  scenario 'fill in the name' do
    sign_in_and_play
    expect(page).to have_content "Joyce, what's your choice?"
  end 
end