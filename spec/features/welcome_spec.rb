feature 'welcomes player' do
  scenario 'displays a welcome message' do
    sign_in_and_play
    expect(page).to have_content('Hello Manisha Welcome to rock paper scissor game')
  end
end