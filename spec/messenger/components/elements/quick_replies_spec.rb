require 'spec_helper'

module Messenger
  module Templates
    describe QuickReplies do
      let(:quick_reply) { Elements::QuickReply.new(content_type: 'location') }
      subject do
        described_class.new(
          text: 'Test_text',
          quick_replies: [quick_reply]
        )
      end

      describe '#payload' do
        it 'returns hash with allowed not-nil attributes only' do
          expect(subject.payload).to eq(
                                         'text' => 'Test_text',
                                         'quick_replies' => [quick_reply.build]
                                     )
        end
      end

      describe '#build' do
        it 'return attachment hash with correct type and payload' do
          expect(subject.build).to eq(
                                       attachment: {
                                           type: 'quick_replies',
                                           payload: subject.payload
                                       }
                                   )
        end
      end
    end
  end
end