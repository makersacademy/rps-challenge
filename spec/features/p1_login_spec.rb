feature '1 Player login' do
  scenario 'Name input' do
    visit '/'
    click_button("1P vs AI")
    find_field("player_1_name").value
    find_button("Submit").value
  end
end
