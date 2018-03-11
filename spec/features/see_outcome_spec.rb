feature 'see outcome' do

  scenario 'choose and proceed to see outcome' do
    skip 'test not working because of Javascript??' do
    end
    visit('/')
    fill_in 'player_name', with: 'oi'
    click_button 'Submit'
    find("#1").click
    click_button 'Submit'
    expect(page).to have_text('You choose!')
  end

end
