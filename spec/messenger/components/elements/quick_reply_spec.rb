require 'spec_helper'

module Messenger
  module Elements
    describe QuickReply do
      let(:title) { 'Test' }
      let(:payload) { 'TEST_CHOICE' }
      let(:image_url) { 'http://test.jpg' }
      let(:text_quick_reply) { described_class.new(
          content_type: 'text',
          title: title,
          payload: payload,
          image_url: image_url
      ) }

      let(:location_quick_reply) { described_class.new(content_type: 'location') }

      describe '#build' do
        describe 'text content type' do
          it 'return hash with content_type, title, payload and image' do
            expect(text_quick_reply.build).to eq(
                                                  'content_type' => 'text',
                                                  'title' => title,
                                                  'payload' => payload,
                                                  'image_url' => image_url
                                             )
          end
        end

        describe 'location content type' do
          it 'return hash with content_type' do
            expect(location_quick_reply.build).to eq('content_type' => 'location')
          end
        end
      end
    end
  end
end
