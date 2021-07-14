require 'play'
require 'player'

describe Play do
  subject(:normal) { 'normal' }
  subject(:expanded) { 'expanded' }
  subject(:alfred) { Player.new('Alfred') }
  subject(:bruce) { Player.new('Bruce') }
  subject(:none) { Player.new('') }

  describe '#initialize' do
    it 'with normal mode and one player' do
      subject = Play.new(normal, alfred, none)
      expect(subject.mode).to eq 'normal'
    end

    it 'with expanded mode and one player' do
      subject = Play.new(expanded, alfred, none)
      expect(subject.mode).to eq 'expanded'
    end

    it 'with normal mode and one player' do
      subject = Play.new(normal, alfred, bruce)
      expect(subject.mode).to eq 'normal'
    end

    it 'with expanded mode and one player' do
      subject = Play.new(expanded, alfred, bruce)
      expect(subject.mode).to eq 'expanded'
    end
  end
end
