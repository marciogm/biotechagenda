class AddFacebookImagemUrlToUser < ActiveRecord::Migration
  def change
    add_column :users, :facebook_imagem_url, :string
  end
end
