# require_relative 'web_helpers'

# #Not sure how to mock a feature test


xfeature 'Declare winner' do
  scenario "Player & Comp choose" do
    sign_in_and_play
    click_button 'Rock'
    allow_any_instance_of(Comp).to receive(:comp_choice).and_return(:rock)
    expect(page).to have_content 'Welcome Gayathri!'
    expect(page).to have_content 'You chose Rock!'
    expect(page).to have_content 'Computer chose Rock!'
    expect(page).to have_content "It's a draw!"
  end
end

