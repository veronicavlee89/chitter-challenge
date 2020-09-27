require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'chitter_test')

  # Clean the test data
  connection.exec('TRUNCATE TABLE peeps, users;')
end