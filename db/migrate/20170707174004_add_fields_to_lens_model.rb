class AddFieldsToLensModel < ActiveRecord::Migration[5.1]
  def change
    remove_column :lens_models, :weather, :boolean
    add_column :lens_models, :weather,                :string
    add_column :lens_models, :product_code,           :string
    add_column :lens_models, :release_year,           :integer
    add_column :lens_models, :status,                 :string
    add_column :lens_models, :d_type_lens,            :boolean
    add_column :lens_models, :slt_compatible,         :boolean
    add_column :lens_models, :focus_design,           :string
    add_column :lens_models, :stab,                   :boolean
    add_column :lens_models, :diafmin2,               :float
    add_column :lens_models, :diafmax2,               :float
    add_column :lens_models, :elements_group,         :string
    add_column :lens_models, :angle_min,              :float
    add_column :lens_models, :angle_max,              :float
    add_column :lens_models, :aperture_blades,        :integer
    add_column :lens_models, :mdf,                    :integer
    add_column :lens_models, :filter_rotate_focusing, :boolean
    add_column :lens_models, :filter_rotate_zooming,  :boolean
    add_column :lens_models, :magnification,          :float
    add_column :lens_models, :filter_diameter,        :integer
    add_column :lens_models, :hood,                   :string
    add_column :lens_models, :color,                  :string
    add_column :lens_models, :length,                 :float
    add_column :lens_models, :weight,                 :integer
    add_column :lens_models, :dyxum_link,             :string
    add_column :lens_models, :dyxum_img_link,         :string
    add_column :lens_models, :dyxum_review_link,      :string
    add_column :lens_models, :sony_forum_link,        :string
  end
end
