require 'spec_helper'

module Messenger
  module Parameters
    describe QuickReply do
      describe '#new' do
        subject do
          described_class.new(payload: 'TEST_PAYLOAD')
        end

        it 'creates correct `payload` attribute' do
          expect(subject.payload).to eq 'TEST_PAYLOAD'
        end
      end
    end
  end
end
