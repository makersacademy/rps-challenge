
feature "The other player's weapon" do
  scenario 'I want to see what the other player chose as a weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    enter_name_and_submit
    select "Rock", from: 'choice'
    click_button 'Play'
    expect(page).to have_content "The computer chose scissors."
  end
end
