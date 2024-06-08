# frozen_string_literal: true
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do

	subject(:str_cal_obj) { described_class.new }

	describe "add(str) - calculate sum" do
		it 'if input str is empty' do
      expect(str_cal_obj.add("")).to eq(0)
    end
	end
end
