class ChangeCpfTypeInInteger < ActiveRecord::Migration
  def change
	change_column :drivers, :cpf, :integer, :limit => 11
  end
end
