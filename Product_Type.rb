
class Product_Type 
	NORMAL = ["music_cd","music_dvd","perfume"]
	BOOK = ["book" ]
	FOOD = ["chocolate_bar","rice","meat","chocolate"]
	MEDICAL = ["headache_pill"]
	def initialize (name,tax=0.15,is_local=nil)
		@name=name			
		@is_local=is_local
		@tax=tax
		
	end
	def check(name)
		tax = 9999
		for i in 0..NORMAL.length-1		

			if name.match(NORMAL[i]) 
				puts "Normal goods tax= 10%"
				tax= 0.1
				if name.match("Imported")
					puts "Normal goods and import tax= 15%"
					tax+= 0.05
				end
				break			
			end
		end
		for i in 0..BOOK.length-1			

			if name.match(BOOK[i])
				puts "Book tax= 0%"
				tax= 0
				if name.match("Imported")
					puts "Book goods and import tax= 5%"
					tax+= 0.05
				end
				break			
			end
		end
		for i in 0..FOOD.length-1			

			if name.match(FOOD[i])
				puts "Food tax= 0%"
				tax= 0
				if name.match("Imported")
					puts "Food goods and import tax= 5%"
					tax+= 0.05
				end
				break			
			end
		end
		for i in 0..MEDICAL.length-1			

			if name.match(MEDICAL[i])
				puts "Medical tax= 0%"
				tax= 0
				if name.match("Imported")
					puts "Medical goods and import tax= 5%"
					tax+= 0.05
				end
				break			
			end
		end
		
		if tax==9999
			puts "Hang hoa ko xac dinh"
			return 0
		else
		return tax
		end

	end

	
end
	
