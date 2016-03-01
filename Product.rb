require_relative "Product_Type"
class Product < Product_Type
	@@no_of_products=0
	def initialize(name="",quality=0,price=0,tax=0,sale=0)
		super(name)
		@quality=quality
		@price=price	
		@tax=tax
		@sale = sale
	end
	def set
		puts "Nhap ten san pham"
		name_ = gets
		@name = name_
		puts "Nhap so luong san pham"
		quality_ = gets
		@quality = Float(quality_)
		puts "Nhap don gia san pham"
		price_ = gets
		@price = Float(price_)

		

	end
	def get_tax
		return @tax
	end
	def get_sale
		return @sale
	end
	def to_s		
		puts "----Ten san pham:"+" #@name \n " + "----So luong: " + "#@quality \n"+" ----Don gia:" + " #@price" 
	end
	def Calculate
		@tax= @price*check("#@name")
		@sale = @price*@quality+(@price*check("#@name")).round(2)
		puts "Total " + (@price*@quality+(@price*check("#@name"))).round(2).to_s

	end
end



