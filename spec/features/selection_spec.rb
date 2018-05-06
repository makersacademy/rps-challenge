feature 'Selecting a weapon' do
  scenario "Announces victory if When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    visit '/'
    fill_in :player_name, with: 'Mark'

  end
end
