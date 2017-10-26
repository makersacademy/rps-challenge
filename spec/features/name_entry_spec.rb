feature 'Name entry' do
  scenario 'user can enter name and see it displayed on the page' do
    sign_in_and_play
    expect(page).to have_content 'Player name: Ed'
  end
end
