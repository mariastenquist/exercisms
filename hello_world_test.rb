require 'minitest/autorun'
require 'minitest/pride'
require_relative 'hello_world'


class HelloTest < Minitest::Test 

	def test_there_is_a_class_HelloWorld
		hw = HelloWorld.new
		assert_instance_of HelloWorld, hw
	end

	def test_that_this_can_take_a_name
		hw = HelloWorld.new
		assert_equal 'Hello World!', hw.hello(name)
	end

	def test_it_can_take_another_name
		hw = HelloWorld.new
		assert_equal 'Hello Bob!!', hw.hello('Bob')
	end

end