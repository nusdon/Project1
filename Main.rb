require_relative "Product"
class Receipt < Product
	@@no_of_receipts
	def initialize(total_tax=0,total_sale=0)
		@total_tax=total_tax
		@total_sale= total_sale
	end
	def main
		puts "Nhap so luong hang hoa"
		n = gets
			
		for i in 0..(Integer(n)-1)
			i = Product.new()
			i.set()
			i.to_s()
			i.Calculate()
			@total_tax+=i.get_tax()
			@total_sale+=i.get_sale()
		end
		puts "================================================ \n"
		puts "Receipt Total \n"
		puts "Sales:" + @total_sale.round(2).to_s() +  " Tax " + @total_tax.round(2).to_s()
	end


end	
a= Receipt.new()
a.main()