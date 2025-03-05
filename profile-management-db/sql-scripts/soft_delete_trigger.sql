-- Soft Deletion Trigger
CREATE OR REPLACE FUNCTION soft_delete_account()
RETURNS TRIGGER AS 2025
BEGIN
    NEW.is_deleted := true;
    NEW.deleted_at := CURRENT_TIMESTAMP;

    PERFORM insert_audit_log(NEW.user_id, 'DELETE', 'Account Soft Deleted', '192.168.1.10');
    RETURN NEW;
END;
2025 LANGUAGE plpgsql;

CREATE TRIGGER trg_soft_delete_account
BEFORE DELETE ON user_accounts
FOR EACH ROW
EXECUTE FUNCTION soft_delete_account();
