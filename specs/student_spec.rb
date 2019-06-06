require("minitest/autorun")
require_relative("../student")

class TestStudent < MiniTest::Test

  def setup()
    options = {"id" => 1, "first_name" => "Simon", "last_name" => "Hall", "house" => "Hufflepuff", "age" => 18}
    @student = Student.new( options )
  end

  def test_first_name()
    result = @student.first_name()
    assert_equal("Simon", result)
  end

  def test_last_name()
    result = @student.last_name()
    assert_equal("Hall", result)
  end

  def test_house()
    result = @student.house()
    assert_equal("Hufflepuff", result)
  end

  def test_age()
    result = @student.age()
    assert_equal(18, result)
  end


end
