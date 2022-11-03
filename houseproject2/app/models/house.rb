class House < ApplicationRecord
    validates :name, :address, presence: true

    def residents
        Person.all.select {|person| person.house_id == house.id}

    end


    has_many(
        :people,
        class_name: 'Person',
        foreign_key: :person_id,
        primary_key: :id
    )

end