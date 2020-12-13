feature App do
  scenario 'Plays game' do
    visit '/'
    expect(page).to have_content 'Hello'
    fill_in "player_name", with: 'Mittens'
    click_on "submit"
    expect(page.current_path).to eql("/play")

    expect(page).to have_content 'Hello Mittens'
    click_on "Rock"
    expect(page.current_path).to eql("/result")


  end
end
