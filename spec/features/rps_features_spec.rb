feature "RPS Features" do

  scenario 'players can enter names, submit and see names on screen' do
    sign_in_and_play
    expect(page).to have_content('Mick')
    # expect(page).to have_content('Keith')
  end

  scenario ''

end
