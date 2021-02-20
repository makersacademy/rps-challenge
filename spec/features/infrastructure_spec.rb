feature 'Testing the infrastructure' do
  scenario 'can run the app and check the page content' do
    visit ('/')
    expect(page).to have_content "Let's play Rock Paper Scissors!"
  end
end
