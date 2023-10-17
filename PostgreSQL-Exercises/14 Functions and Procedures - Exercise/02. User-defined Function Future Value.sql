CREATE OR REPLACE FUNCTION 
	fn_calculate_future_value(
		initial_sum DECIMAL, 
		yearly_interest_rate DECIMAL,
		number_of_years DECIMAL) 
	RETURNS DECIMAL  AS $$
DECLARE 
	future_investment_value DECIMAL;
BEGIN
	future_investment_value := initial_sum * POW(1 + yearly_interest_rate, number_of_years);
	RETURN 
		TRUNC(future_investment_value, 4);
END;
$$ LANGUAGE plpgsql;

SELECT fn_calculate_future_value (1000, 0.1, 5);
  