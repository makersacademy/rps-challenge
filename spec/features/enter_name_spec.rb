feature 'Enter name' do
  scenario 'Enter your name and then see it onscreen' do
    sign_in_and_play
    expect(page).to have_content 'Hello Amy'
  end
end
