CREATE OR REPLACE FUNCTION insert_audit_log(p_user_id INT, p_action TEXT)
RETURNS VOID AS $$
BEGIN
    INSERT INTO audit_logs (user_id, action, timestamp)
    VALUES (p_user_id, p_action, CURRENT_TIMESTAMP);
END;
$$ LANGUAGE plpgsql;
-- Indexes for faster searches
CREATE INDEX IF NOT EXISTS idx_audit_logs_timestamp ON audit_logs (timestamp);
CREATE INDEX IF NOT EXISTS idx_audit_logs_user_id ON audit_logs (user_id);

-- Partitioning by Year
CREATE TABLE IF NOT EXISTS audit_logs_2025 PARTITION OF audit_logs
FOR VALUES FROM ('2025-01-01') TO ('2025-12-31');

CREATE TABLE IF NOT EXISTS audit_logs_2026 PARTITION OF audit_logs
FOR VALUES FROM ('2026-01-01') TO ('2026-12-31');
ALTER TABLE users ADD COLUMN IF NOT EXISTS account_status VARCHAR(20) DEFAULT 'active';
CREATE OR REPLACE FUNCTION deactivate_account(p_user_id INT)
RETURNS VOID AS $$
BEGIN
    UPDATE users SET account_status = 'inactive' WHERE user_id = p_user_id;
END;
$$ LANGUAGE plpgsql;
