require 'spec_helper'
require 'db_helper'

RSpec.describe ActsAsDowncasableOn::Core do
  it 'should respond to acts_as_downcasable_on method' do
    expect(Test).to respond_to(:acts_as_downcasable_on)
  end

  context 'when process to lowercase' do
    let(:test) { Test.new(value_downcasable_1: 'TEXT_1', value_downcasable_2: 'TEXT_2', value: 'TEXT') }

    context 'should process on validate' do
      before { expect(test.save).to be_truthy }
      it_behaves_like 'test instance attributes'
    end

    context 'should process on save' do
      before { expect(test.save).to be_truthy }
      it_behaves_like 'test instance attributes'
    end
  end

  it 'should not raise exception for non string attribute' do
    test = Test.new(number: rand(1000))
    expect { test.valid? }.not_to raise_error(NoMethodError)
  end
end
