#
# Métodos e constantes de busca para Grupos de Itens
#

module GroupItem::Search
  extend ActiveSupport::Concern
  include Searchable

  SEARCH_EXPRESSION = %q{
    unaccent(LOWER(items.title)) LIKE unaccent(LOWER(:search)) OR
    unaccent(LOWER(items.description)) LIKE unaccent(LOWER(:search))
  }

  SEARCH_INCLUDES = :item
end
