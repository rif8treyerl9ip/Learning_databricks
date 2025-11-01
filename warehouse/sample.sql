SELECT
   id,
    name,
  count( * )
FROM
  my_catalog.my_schema.employees

WHERE
  department = 'Sales'
order by id
;
