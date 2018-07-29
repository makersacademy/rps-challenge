feature 'Game Score' do
  before(:each) { multiplayer_sign_in }
  scenario 'Scores are displayed on start as 0 - 0' do
    expect(page).to have_content('0 - 0')
  end
end
