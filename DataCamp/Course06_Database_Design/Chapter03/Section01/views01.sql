-- Get all non-systems views
SELECT * FROM INFORMATION_SCHEMA.views
WHERE table_schema NOT IN ('pg_catalog', 'information_schema');

/*
table_catalog	table_schema	table_name	view_definition	check_option	is_updatable	is_insertable_into	is_trigger_updatable	is_trigger_deletable	is_trigger_insertable_into
dataarchpost	public	view1	 SELECT content.reviewid,
    content.content
   FROM content
  WHERE (length(content.content) > 4000);	NONE	YES	YES	NO	NO	NO
dataarchpost	public	view2	 SELECT reviews.reviewid,
    reviews.title,
    reviews.score
   FROM reviews
  WHERE (reviews.pub_year = 2017)
  ORDER BY reviews.score DESC
 LIMIT 10;	NONE	NO	NO	NO	NO	NO