feature 'Enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to Rock/Paper/Scissors, Jack'
  end
end 
