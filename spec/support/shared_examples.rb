puts 'asdasdas'
RSpec.shared_examples_for 'test instance attributes' do
  it do
    { value_downcasable_1: 'text_1', value_downcasable_2: 'text_2', value: 'TEXT' }.each do |attr, value|
      expect(test.send(attr)).to eq value
    end
  end
end
