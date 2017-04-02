feature 'testing computer class' do

  scenario 'computer chooses a random weapon' do
    sign_in_and_play
    find("option[value='rock']").click
    click_button("Play")
    expect(page).to have_content("Computer chose")
  end



end
