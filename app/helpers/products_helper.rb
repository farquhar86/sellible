module ProductsHelper
	def products_helper
		@products = Product.all
		puts @products
	end
end
