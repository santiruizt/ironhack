require_relative "../lib/lexiconomitron.rb"


describe Lexiconomitron do 

	before :each do
		@lexi = Lexiconomitron.new
	end

	describe "#eat_t" do
		it "removes every letter t from the input" do
			expect(@lexi.eat_t("The great scott!")).to eq("he grea sco!")
		end
	end

	describe "shazam" do
		it "transforms input into an array of words, remove the t and T, reverse their letters and return the first and last words" do
			expect(@lexi.shazam("This is a boring test")).to eq(["sih", "se"])
		end
	end

	describe "#oompa_loompa" do
		it "keeps the words from the input with three or less characters, after eating the t and T" do
			expect(@lexi.oompa_loompa("If you wanna be my lover")).to eq(["If", "you", "be", "my"])
		end	
	end

end