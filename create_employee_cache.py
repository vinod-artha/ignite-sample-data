from collections import OrderedDict

from pyignite import Client, GenericObjectMeta
from pyignite.datatypes import DoubleObject, IntObject, String
from pyignite.datatypes.prop_codes import *

client = Client()
client.connect('localhost', 10800)

employee_cache = client.create_cache({
        PROP_NAME: 'employees',
        PROP_SQL_SCHEMA: 'PUBLIC',
        PROP_QUERY_ENTITIES: [
            {
                'table_name': 'employees'.upper(),
                'key_field_name': 'emp_no',
                'key_type_name': 'java.lang.Integer',
                'field_name_aliases': [],
                'query_fields': [
                    {
                        'name': 'emp_no',
                        'type_name': 'java.lang.Integer',
                        'is_key_field': True,
                        'is_notnull_constraint_field': True,
                    },
                    {
                        'name': 'birth_date',
                        'type_name': 'java.lang.String',
                    },
                    {
                        'name': 'first_name',
                        'type_name': 'java.lang.String',
                    },
                    {
                        'name': 'last_name',
                        'type_name': 'java.lang.String',
                    },
                    {
                        'name': 'gender',
                        'type_name': 'java.lang.Char',
                    },
                    {
                        'name': 'hire_date',
                        'type_name': 'java.math.String',
                    },
                ],
                'query_indexes': [],
                'value_type_name': 'employees',
                'value_field_name': None,
            },
        ],
    })


class Employee(
    metaclass=GenericObjectMeta,
    type_name='employees',
    schema=OrderedDict([
        ('birth_date',String),
        ('first_name', String),
        ('last_name', String),
        ('gender', String),
        ('hire_date', String),
    ])
):
    pass

