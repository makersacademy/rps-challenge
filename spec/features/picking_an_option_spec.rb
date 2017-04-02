feature 'picking an option' do
  scenario "picking rock and seeing a new page with choice" do
    sign_in_and_play
    click_button 'submit'
    expect(page).to have_content "You Picked Rock!"
  end
end
