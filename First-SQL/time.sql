CREATE TABLE credit_cards (
    card_id INT PRIMARY KEY,
    card_number VARCHAR(16),
    issued_date DATE, --gets the current date, ex. 2026-11-02, and makes it the issued date
    activation_time TIME, --gets the time, ex. 22:32:12pm and makes it the activation time
    created_at TIMESTAMP --gets the date and hour and inserts it into the "created at" column
);

INSERT INTO credit_cards (card_id, card_number, issued_date, activation_time, created_at)
VALUES (1, '4111111111111111', '2026-06-27', '22:15:00', '2026-06-27 22:15:00');

SELECT 
    card_number,
    issued_date, --here it will return 2026-06-27
    activation_time, --here it will return 22:15:00
    created_at, --here it returns 2026-06-27 22:15:00
    DATE_PART('year', issued_date) AS issued_year, --returns the year it got from the issued date and calls it issued_year
    DATE_ADD(issued_date, INTERVAL 2 YEAR) AS expiration_date --gets the issued date and adds 2 years to it and calls it 'expiration_date'
FROM credit_cards;
