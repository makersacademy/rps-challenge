feature 'Name input' do
  scenario 'user inputs name from prompt and can see it on screen' do
    sign_in_and_play()
    expect(page).to have_content "Hi, Tom"
  end
end