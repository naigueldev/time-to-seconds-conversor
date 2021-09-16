# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/helpers/convert_string_to_seconds'

class ConvertToSecondsTest < Minitest::Test
  def test_should_convert_successfull
    assert_equal('113', Helper::ConvertToSeconds.execute('00:01:53'))
  end

  def test_should_result_zero
    assert_equal('0', Helper::ConvertToSeconds.execute('00:00:00'))
  end

  def test_should_throw_error_invalid_format
    assert_raises(ArgumentError, 'Error # Invalid format') do
      Helper::ConvertToSeconds.execute('a')
    end

    assert_raises(ArgumentError, 'Error # Invalid format') do
      Helper::ConvertToSeconds.execute('000:000:123')
    end
  end

  def test_should_throw_error_should_be_a_string
    assert_raises(TypeError, 'Error # Should be a string') do
      Helper::ConvertToSeconds.execute(15)
    end
  end
end
