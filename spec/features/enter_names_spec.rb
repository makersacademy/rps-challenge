feature 'Enter name' do
  scenario 'Submit name' do
    sign_in_to_play
    expect(page).to have_content 'Welcome Dave!'
  end
end
