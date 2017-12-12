feature 'entering names' do
  scenario 'entering name in box and pressing submit displays name' do
    sign_in
    expect(page).to have_content "#{@player_name}, are you ready to play Rock Paper Scissors?"
  end
end
