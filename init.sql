CREATE TABLE IF NOT EXISTS punch_records (
    id SERIAL PRIMARY KEY,
    employee_id VARCHAR(50) NOT NULL,
    status VARCHAR(10) NOT NULL,
    timestamp TIME NOT NULL,
    date DATE NOT NULL,
    hours_worked NUMERIC(5,2),
    attendance_status VARCHAR(20)
);
