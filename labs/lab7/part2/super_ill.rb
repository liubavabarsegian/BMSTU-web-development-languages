# frozen_string_literal: true

require_relative 'ill'

class SuperIll < Ill
    def initialize(surname, age, last_clinical_examination_year)
        super(surname, age)
        @last_clinical_examination_year = last_clinical_examination_year
    end

    def next_clinical_examination
        @last_clinical_examination_year + 3
    end
end