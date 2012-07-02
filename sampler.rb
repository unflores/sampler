class Sampler
  attr_accessor :city_id, :products, :chosen_nums
  
  #all products
  def initialize(city_id, type, sample_size)
    @chosen_nums   = {}
    @sample_size   = sample_size
    @city_id   		= city_id
    @products   	= {}
    @type   			= type
  end

  # Grabs the next random product
  def next_rand
    begin
      num = rand(0...possible_products.count)
    end while(@chosen_nums[num])
    @chosen_nums[num] = 1
    num
  end

  # Filters out the types that you don't want
  #
  # == Example
  # I wish to test Restaurants
  # Sampler.new(city_id, Restaurant, 100).types_not_permitted # => %w(City Region Country Activity Hotel)
  #
  def types_not_permitted
    %w(City Region Country Activity Restaurant Hotel) - [@type]
  end
  
  # Retrieves the products from a specific city of a specific type
  def possible_products
    @possible_products ||= Product.where(:city_id => @city_id).where('type not in (?) and moderation_state_enum = 0', types_not_permitted)
  end
  
  # Inserts a new harmonization to be processed
  def create_harmonization(product_id, city_id)
    FoursquareHarmonization.create!(:location_id => product.id, :city_id => product.city_id)
  end

  # Takes all of the possible products and grabs the next one randomly
  def fill_products
    i = 0
    while(i < @sample_size)
      product = possible_products[next_rand]
      @products[product.id] = product
      i += 1
    end
    @products = @products.values
  end

  # Goes through all of the products and creates a harmonization for each
  def create_harmonizations
    @products.each do|product|
      create_harmonization(product.id, product.city_id)
    end
  end
end
