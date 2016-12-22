require 'spec_helper'

module Messenger
  module Elements
    describe SenderAction do
      let(:seen_action) { described_class.new(sender_action: 'mark_seen') }
      let(:typing_on_action) { described_class.new(sender_action: 'typing_on') }
      let(:typing_off_action) { described_class.new(sender_action: 'typing_off') }


      describe '#build' do
        describe 'mark_seen action' do
          it 'return hash with send_action' do
            expect(seen_action.build).to eq('sender_action' => 'mark_seen')
          end
        end

        describe 'typing_on action' do
          it 'return hash with send_action' do
            expect(typing_on_action.build).to eq('sender_action' => 'typing_on')
          end
        end

        describe 'typing_off_action' do
          it 'return hash with send_action' do
            expect(typing_off_action.build).to eq('sender_action' => 'typing_off')
          end
        end
      end
    end
  end
end
