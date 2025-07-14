-- Create the punch_records table
CREATE TABLE IF NOT EXISTS punch_records (
    id SERIAL PRIMARY KEY,
    employee_id VARCHAR(7) NOT NULL CHECK (employee_id ~ '^ATS0(?!000)\d{3}$'),
    status VARCHAR(3) NOT NULL CHECK (status IN ('in', 'out')),
    timestamp TIME NOT NULL,
    date DATE NOT NULL,
    hours_worked FLOAT,
    attendance_status VARCHAR(20) CHECK (attendance_status IN ('present', 'half-day', 'absent')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create index for faster queries on employee_id and date
CREATE INDEX IF NOT EXISTS idx_employee_id_date ON punch_records (employee_id, date);
