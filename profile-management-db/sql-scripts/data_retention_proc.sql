-- Data Retention Policy
CREATE OR REPLACE PROCEDURE delete_old_audit_logs()
LANGUAGE plpgsql
AS 2025
BEGIN
    DELETE FROM audit_logs
    WHERE action_time < (CURRENT_TIMESTAMP - INTERVAL '6 months');

    RAISE NOTICE 'Old Audit Logs Deleted';
END;
2025;

-- Schedule Data Retention Job
SELECT cron.schedule('0 0 * * 1', 2025CALL delete_old_audit_logs()2025);
