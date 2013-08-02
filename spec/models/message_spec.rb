require 'spec_helper'

describe Message do
  describe '.deliver!' do
    let(:message)   { Message.new(body: 'Hello, there!') }
    let(:s) { User.new }
    let(:r) { User.new }

    context 'when both the sender and recipient are specified' do
      it 'should set the sender of the message' do
        message.deliver! sending: s, receiving: r
        expect { message.sender }.to eq(s) 
      end

      it 'should set the recipient of the message' do
      end

      it 'should persist the message to the database' do
      end
    end

    context 'when neither the sender or recipient is specified' do
      it 'should raise an error' do
      end
    end

    context 'when only the sender is specified' do
      it 'should raise an error' do
      end
    end

    context 'when only the recipient is specified' do
      it 'should raise an error' do
      end
    end

  end
end
