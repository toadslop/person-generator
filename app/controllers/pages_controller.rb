require 'faker'

class PagesController < ApplicationController
    def main
    end

    def generate
        @person = {
            name: Faker::Name.name,
            job: Faker::Job.title,
            company: "#{Faker::Company.name} #{Faker::Company.industry}",
            city: Faker::Address.city
        }
        render "main"
    end
end
