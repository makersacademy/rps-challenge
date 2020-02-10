feature 'Mulitplayer names' do
  scenario 'submitting names' do
    sign_in_two_player
    expect(page).to have_content 'Jack vs. Dave'
  end
end

feature "Playing against the computer" do 
  scenario "submitting one name vs computer mode" do 
    sign_in_computer
    expect(page).to have_content 'Jack vs. Bot'
  end 
end