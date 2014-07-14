module Spree
  Taxon.class_eval do
    default_scope { order('spree_products_taxons.position desc') }
  end
end
