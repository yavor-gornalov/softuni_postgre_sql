CREATE FUNCTION fn_get_volunteers_count_from_department(
	searched_volunteers_department VARCHAR(30)) RETURNS integer AS $$
		SELECT 
			count(*)
		FROM
			volunteers v
		JOIN volunteers_departments vd ON
				v.department_id = vd.id
		WHERE
			vd.department_name = searched_volunteers_department;

$$ LANGUAGE SQL;

SELECT
	fn_get_volunteers_count_from_department('Education program assistant');
SELECT
	fn_get_volunteers_count_from_department('Guest engagement');