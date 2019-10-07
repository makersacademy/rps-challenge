feature 'Enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'RPS: Mittens vs. Computer'
  end
end
