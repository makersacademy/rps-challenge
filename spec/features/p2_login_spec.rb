feature '2 Player login' do
  scenario 'Name input' do
    visit '/'
    click_button("1P vs 2P")
    find_field("player_1_name").value
    find_button("Submit").value
    find_field("player_2_name").value
    find_button("Submit").value
  end
end
