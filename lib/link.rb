# this class corresponds to a table in the database
# we can use it to manipulate data

class Link

  #this makes the instances of this class Datamapper resouces
  include DataMapper::Resource

  # This block describes what resources of this class Datamapper resources
    property :id,    Serial # Serial means that it will be auto-incremented for every record
    property :title, String
    property :url,   String

end