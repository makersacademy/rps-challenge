feature 'User entering name' do
  scenario 'can enter name' do
    sign_in_and_play
    expect(page).to have_content 'Hello Dummy'
  end
end
