-- Membuat tabel Users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(150) UNIQUE NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    role VARCHAR(20) NOT NULL -- 'Auditor' atau 'Auditee'
);

-- Membuat tabel Findings (Temuan)
CREATE TABLE findings (
    id SERIAL PRIMARY KEY,
    category VARCHAR(100) NOT NULL, -- Selisih stock, Lapping, Fraud, dll
    description TEXT NOT NULL,
    risk_level VARCHAR(20),
    status VARCHAR(20) DEFAULT 'Open',
    due_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
