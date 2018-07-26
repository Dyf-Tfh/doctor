class LinkBetweenDoctorAndSpeciality < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors_specialities do |t|
      t.belongs_to :speciality
      t.belongs_to :doctor
    end
  end
end
