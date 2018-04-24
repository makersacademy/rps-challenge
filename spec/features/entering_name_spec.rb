feature 'entering name' do
  scenario 'entering player name and print on the screen' do
    sign_in_and_play
    expect(page).to have_content 'Timmy vs. Shaun'
  end
end
