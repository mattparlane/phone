require "helper"

## Ireland
class IETest < Minitest::Test

  def test_short_cork_number
    parse_test('+353 28 28946', '353', '28', '28946')
  end

  def test_short_cork_number_2
    parse_test('+353 28 28943', '353', '28', '28943')
  end

  def test_short_wrong_area_code
    pp = Phoner::Phone.parse('+353 33023')

    assert_nil pp
  end

end
