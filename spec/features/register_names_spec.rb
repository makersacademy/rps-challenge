feature "Register name" do
  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game
  scenario 'submitting name' do
    visit_page_and_register
    expect(page).to have_content 'Welcome Vic. Get ready for an epic battle.'
  end

end
