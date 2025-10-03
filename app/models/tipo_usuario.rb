class TipoUsuario < ApplicationRecord

    validates :descricao, presence: true, uniqueness: true
end