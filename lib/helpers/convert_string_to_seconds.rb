# frozen_string_literal: true

require 'time'

module Helper
  class ConvertToSeconds
    def self.execute(time = '')
      hour = Time.parse(time).hour * 3600
      minutes = Time.parse(time).min * 60
      seconds = Time.parse(time).sec

      (hour + minutes + seconds).to_s
    rescue ArgumentError
      raise ArgumentError, 'Error # Invalid format'
    rescue TypeError
      raise TypeError, 'Error # Should be a string'
    end
  end
end
