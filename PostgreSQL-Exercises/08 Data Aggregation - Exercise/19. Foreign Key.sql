CREATE TABLE IF NOT EXISTS employees_projects (
	id SERIAL PRIMARY KEY,
	project_id INT,
	employee_id INT,
	CONSTRAINT fk_employees_projects_employees FOREIGN KEY (employee_id) REFERENCES employees(id),
	CONSTRAINT fk_employees_projects_projects FOREIGN KEY (project_id) REFERENCES projects(id)
);

