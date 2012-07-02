require 'sampler.rb'
chosen = {}
chosen['paris']  = {}
chosen['london'] = {}
chosen['paris']['resto'] = Sampler.new(1770992, 'Restaurant', 300)
chosen['paris']['resto'].fill_products
chosen['paris']['resto'].create_harmonizations

chosen['paris']['hotel'] = Sampler.new(1770992, 'Hotel')
chosen['paris']['hotel'].fill_products
chosen['paris']['hotel'].create_harmonizations

chosen['paris']['activity'] = Sampler.new(1770992, 'Activity')
chosen['paris']['activity'].fill_products
chosen['paris']['activity'].create_harmonizations


chosen['london']['resto'] = Sampler.new(1884625, 'Restaurant')
chosen['london']['resto'].fill_products
chosen['london']['resto'].create_harmonizations

chosen['london']['hotel'] = Sampler.new(1884625, 'Hotel', 300)
chosen['london']['hotel'].fill_products
chosen['london']['hotel'].create_harmonizations

chosen['london']['activity'] = Sampler.new(1884625, 'Activity', 300)
chosen['london']['activity'].fill_products
chosen['london']['activity'].create_harmonizations



chosen['newyork']['resto'] = Sampler.new(5960489, 'Restaurant')
chosen['newyork']['resto'].fill_products
chosen['newyork']['resto'].create_harmonizations

chosen['newyork']['hotel'] = Sampler.new(5960489, 'Hotel', 300)
chosen['newyork']['hotel'].fill_products
chosen['newyork']['hotel'].create_harmonizations

chosen['newyork']['activity'] = Sampler.new(5960489, 'Activity')
chosen['newyork']['activity'].fill_products
chosen['newyork']['activity'].create_harmonizations



chosen['singapore']['resto'] = Sampler.new(7990079, 'Restaurant')
chosen['singapore']['resto'].fill_products
chosen['singapore']['resto'].create_harmonizations

chosen['singapore']['hotel'] = Sampler.new(7990079, 'Hotel')
chosen['singapore']['hotel'].fill_products
chosen['singapore']['hotel'].create_harmonizations

chosen['singapore']['activity'] = Sampler.new(7990079, 'Activity')
chosen['singapore']['activity'].fill_products
chosen['singapore']['activity'].create_harmonizations

