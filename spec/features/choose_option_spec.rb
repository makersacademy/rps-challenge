feature "Choose option" do
  scenario 'Player can choose rock, paper or scissors' do
    sign_in_and_play
    click_button 'ROCK'
    expect(page).to have_content('You chose ROCK')
  end
end