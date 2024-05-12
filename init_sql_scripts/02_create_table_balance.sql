CREATE TABLE IF NOT EXISTS Balance (
    balance_id SERIAL PRIMARY KEY,
    account_id INTEGER NOT NULL REFERENCES Account(account_id),
    balance DECIMAL(10, 2) NOT NULL,
    balance_db DECIMAL(10, 2) NOT NULL,
    balance_cr DECIMAL(10, 2) NOT NULL,
    date_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    next_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);