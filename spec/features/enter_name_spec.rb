feature 'Enter name' do
  scenario 'add name' do
    sign_in_and_play
    expect(page).to have_content('John')
  end
end
