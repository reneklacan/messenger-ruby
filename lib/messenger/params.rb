module Messenger
  class Params
    attr_accessor :params

    def initialize(params)
      @params = params
    end

    def entries
      @entries_objects ||= build_entries
    end

    def first_entry
      entries[0].messagings[0]
    end

    alias_method :first_messaging, :first_entry

    private

    def build_entries
      params['entry'].map { |entry| Parameters::Entry.new(entry.to_hash.transform_keys(&:to_sym)) }
    end
  end
end
