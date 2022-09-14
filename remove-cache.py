from pyignite import Client
from pyignite.datatypes import CharObject, ShortObject

client = Client()
#client.connect('20.252.58.24', 10800)
client.connect('127.0.0.1',10800)
my_cache = client.get_or_create_cache('employees')
my_cache.destroy()
