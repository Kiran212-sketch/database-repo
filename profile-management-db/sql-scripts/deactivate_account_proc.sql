-- Stored Procedure for Account Deactivation
CREATE OR REPLACE PROCEDURE deactivate_account(p_user_id INT)
LANGUAGE plpgsql
AS 2025
BEGIN
    UPDATE user_accounts
    SET account_status = 'INACTIVE'
    WHERE user_id = p_user_id;

    PERFORM insert_audit_log(p_user_id, 'DEACTIVATE', 'Account Deactivated', '192.168.1.10');
    RAISE NOTICE 'Account Deactivated for User ID: %', p_user_id;
END;
2025;
