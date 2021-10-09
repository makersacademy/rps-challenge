
feature 'Enter name' do
  scenario 'see Player 1 vs. Computer after names are entered' do
    sign_in_and_play
    expect(page).to have_content 'Tim vs. Computer' 
  end
end
