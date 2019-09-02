
lils-essential-oils is an e-commerce website whose primary responsibility is to sell the DoTERRA line of essential oils, and that is what I am working on at this time. In its fully fleshed out
form it will also be a place where downlevel DoTERRA marketers can meetup to exchange news and information and consult marketing statistics. There would be an area of product news and helpful tips, and an area where prospective marketers could find information about joining the program. at first, though, it will be only be a sight to market products.

Users will be asked to signup and login. Signed up users will be eligible for periodic discounts on products.

Object classes:
	User: 	attributes: name, email, password, image-url, uid, admin: :false
			associations: none
			controller actions: new, create, show

	Admin::User  attributes: name, email, password, image-url, uid, admin: :true
			associations: none
			controller actions: index, new, create, show, edit, update, destroy

	Category:  attributes:  name, product_id
			associations: has_many: :products
			controller actions:  index, new, create, show, edit, update, destroy

	Product: attributes: name, description, price, image_url
			associations: belongs_to: :category
						  has_many: :line_items
						  has_many: :carts, through: :line_items
			controller actions:  index, new, create, show, edit, update, destroy

	LineItems: attributes: name, price, quantity
			associations: belongs_to: :cart
						  belongs_to: :product
			controller_actions: new, create, index, destroy

	Order: attributes:  customer_name, email, address, pay_type, shipping_status
			associations: has_one: :cart
			controller_actions: index, new, create, show, edit, update, destroy

	Cart: attributes: none
			associations: has_many: :line_items
						  has_many: :products, through: :line_items
						  belongs_to: :order
			controller_actions: new, create, destroy

	Session: attributes: none
			associations: none
			controller_actions: new, create, destroy
			