# frozen_string_literal: true
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do

	subject(:str_cal_obj) { described_class.new }

	describe "add(str) - calculate sum" do
		context "passed cases" do
			it 'if input str is empty' do
	      expect(str_cal_obj.add("")).to eq(0)
	    end

	    it 'if input str contains positive numbers' do
	    	expect(str_cal_obj.add("1,5")).to eq(6)
	    end

	    it 'if input str contains only a positive number' do
	    	expect(str_cal_obj.add("1")).to eq(1)
	    end

	    it 'if input str contains \n with numbers' do
	    	expect(str_cal_obj.add("1\n2,3")).to eq(6)
	    end

      it 'if input str contains delimeter' do
        expect(str_cal_obj.add("//;\n1;2")).to eq(3)
      end
	  end

    context "failed cases" do
	    it 'if input str contains \n with negative numbers' do
	    	expect{ str_cal_obj.add("1\n2,-3") }.to raise_error("negative numbers not allowed -3")
	    end

	    it 'if input str contains delimeter with negative numbers' do
        expect{ str_cal_obj.add("//;\n1;-2;-4") }.to raise_error("negative numbers not allowed -2,-4")
      end

      it 'if input str contains all negative numbers' do
        expect{ str_cal_obj.add("-2,-4,-3") }.to raise_error("negative numbers not allowed -2,-4,-3")
      end
	  end
	end
end
