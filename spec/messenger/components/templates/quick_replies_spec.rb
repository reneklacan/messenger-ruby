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

      describe '#build' do
        it 'return hash with correct text and quick_replies' do
          expect(subject.build).to eq(
                                       'text' => 'Test_text',
                                       'quick_replies' => [quick_reply.build]
                                     )
        end
      end
    end
  end
end
