feature 'View player choice' do
  scenario 'see Player choice' do
    sign_in_and_play
    expect(page).to have_content 'Mengchen: rock'
  end
end
