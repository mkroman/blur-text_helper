RSpec.describe Blur::TextHelper do
  it 'has a version number' do
    expect(Blur::TextHelper::VERSION).not_to be nil
  end

  let(:class_instance) do
    (Class.new { include Blur::TextHelper }).new
  end

  describe '#pluralize' do
    it 'should be plural when there\'s multiple' do
      expect(class_instance.pluralize(2, 'cat')).to eq '2 cats'
    end

    it 'should be singular when there\'s one' do
      expect(class_instance.pluralize(1, 'cat')).to eq '1 cat'
    end
  end

  describe '#sanitize' do
    it 'should remove carriage returns and newlines' do
      text = <<~EOS
        The quick brown fox jumps over the lazy dog
        The quick brown fox jumps over the lazy dog
      EOS

      expect(class_instance.sanitize(text)).to eq 'The quick brown fox jumps over the lazy dog The quick brown fox jumps over the lazy dog'
    end

    it 'should remove redundant spaces' do
      text = 'The quick    brown   fox    jumps over the lazy dog'

      expect(class_instance.sanitize(text)).to eq 'The quick brown fox jumps over the lazy dog'
    end
  end
end
