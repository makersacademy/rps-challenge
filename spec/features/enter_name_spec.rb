feature 'Enter name' do
  scenario 'Submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Hello Amy'
  end
end
