
feature 'enter names' do
  scenario 'players can enter their name' do
    sign_in_and_play
    expect(page).to have_content 'Thady vs. The Machine'
  end
end
