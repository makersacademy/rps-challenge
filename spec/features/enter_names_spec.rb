
feature 'Enter name' do
  scenario 'Player can enter name' do
    sign_in_and_play
    expect(page).to have_content('Claudia vs. Computer')
  end
end
