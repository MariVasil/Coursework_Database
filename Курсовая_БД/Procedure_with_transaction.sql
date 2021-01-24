-- Данная процедура осуществляет внутренний перевод денежных средств между счетами двух (или одного) пользователя

CREATE DEFINER=`root`@`localhost` PROCEDURE `internal_transfer`(in from_account_number varchar(45), in to_account_number varchar(45), in in_amount decimal)
BEGIN
	START TRANSACTION;
		SELECT a.id INTO @from_id FROM accounts a
        WHERE a.number = from_account_number FOR UPDATE;
		SELECT a.id INTO @to_id FROM accounts a
        WHERE a.number = to_account_number FOR UPDATE;
        UPDATE accounts a
			SET a.balance = a.balance - in_amount WHERE a.number = from_account_number;
		UPDATE accounts a
            SET a.balance = a.balance + in_amount WHERE a.number = to_account_number;
		INSERT INTO internal_transfers (number, amount, from_account, to_account, status) VALUE (UUID(), in_amount, @from_id, @to_id, 1);
        SELECT a.balance INTO @new_balance FROM accounts a
        WHERE a.id = @from_id;
        IF @new_balance < 0 THEN
        ROLLBACK;
        END IF;        
	COMMIT;
END