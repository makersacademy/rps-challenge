feature 'the oponent chooses the random object' do
  scenario "player chooses the object and randomly assign the object to the rival" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    page.choose('Scissors')
    click_button ('Submit')
    expect(page).to have_content('Skynet is ready... Skynet has chosen... Scissors')
  end
end
