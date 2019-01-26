can I decide my inputs/outputs when testing?

```ruby
require 'player'

describe Player do
  subject { Player.new("playername") }
it "has a name variable" do
  expect(subject.name).to eq("playername")
end
it "can set and retrieve a move" do
  move = double("rock")
  subject.choose_move(move)
  expect(subject.move).to eq(move)
end
```
