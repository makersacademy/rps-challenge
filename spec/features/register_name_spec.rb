feature 'enter name' do
  scenario 'submit name' do 
    register_and_play
    expect(page).to have_content "Welcome to the game Toby"
  end
end
