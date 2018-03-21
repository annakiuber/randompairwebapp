require "minitest/autorun"
require_relative "random_pairing_app.rb"

class Pairing_gen_test < Minitest::Test

	 def test_1_equals_1
		assert_equal(1,1)
	end

	# def test_pair_of_two
	# 	assert_equal(1, annas_pairing_app(["BobbySue", "BillyJoeBob"]).size)
	# end

	# def test_pair_of_4
	# 	assert_equal(2, annas_pairing_app(["Rick", "Morty", "Scott", "Smelly Scott"]).size)
	# end

	def test_pair_of_2_odd
		assert_equal(1, annas_pairing_app(["RickyBobby", "Will Ferrel", "Leonard Skinnerd"]).size)
	end
	# def test_pair_of_4_odd
	# 	assert_equal(2, annas_pairing_app(["Maude", "Harold", "BobbySue", "Lucy", "The Boogy man"]).size)
	# end
end
