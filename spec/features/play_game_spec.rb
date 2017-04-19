feature 'take player move choice and see result' do
  scenario 'show player result after making move' do
    visit '/'
    fill_in('player_name', with: 'Hassan')
    click_button('Submit')
    select('Rock', from: 'choice')
    click_button('Submit Choice')
    expect(page).to have_content "Result of match between Hassan and RPS-Bot:"
  end

end
