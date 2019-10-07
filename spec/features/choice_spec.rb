
feature "Rock Paper Scissors" do
  scenario 'player presented with rps options' do
    sign_in_and_play
    expect(page).to have_content('Choose wisely...')
  end
end
